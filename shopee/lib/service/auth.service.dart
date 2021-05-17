import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shop_app/models/user.model.dart';

import '../constants.dart';
import '../models/user.model.dart';

class AuthService {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  UserModel _userFormFireBaseUser(User user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  Stream<UserModel> get user {
    return auth
        .authStateChanges()
        .map((User firebaseUser) => _userFormFireBaseUser(firebaseUser));
  }

  void getUserInfo() {
    auth.authStateChanges().listen((User user) async {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  Future<UserModel> register(String email, String password) async {
    UserModel userModel;
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
      User user = userCredential.user;
      userModel = _userFormFireBaseUser(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: "Mật khẩu quá yếu");
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(msg: "Tài khoản này đã tồn tại");
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return userModel;
  }

  Future<void> addUser(
      {UserModel userModel}) async {
    var userCollection = fireStore.collection(USER_COLLECTION);
    print(userModel.toJson());
    return userCollection.add(userModel.toJson());
  }

  Future<bool> loginInEmail(String email, String pass) async {
    bool isLoginSuccess = false;
    try {
      UserCredential userCredential =
      await auth.signInWithEmailAndPassword(email: email, password: pass);
      isLoginSuccess = true;
      print(userCredential.user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: "Tài khoản không tồn tại", backgroundColor: Colors.blue);
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: "Sai mật khẩu",  backgroundColor: Colors.blue);
        print('Wrong password provided for that user.');
      }
    }
    return isLoginSuccess;
  }


  Future<bool> signOut() async {
    try {
      await auth.signOut();
      return true;
    } catch (e) {
      return false;
    }
  }
}
