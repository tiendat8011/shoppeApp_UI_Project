import 'package:flutter/material.dart';

import '../../models/user.model.dart';
import 'components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  final UserModel user;
  static String routeName = "/complete_profile";

  const CompleteProfileScreen({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng ký'),
      ),
      body: Body(userModel: user,),
    );
  }
}
