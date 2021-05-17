import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/user.model.dart';
import 'package:shop_app/service/auth.service.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Đăng nhập"),
      ),
      body: Body(),
    );
  }
}
