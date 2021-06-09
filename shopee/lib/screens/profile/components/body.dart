import 'package:flutter/material.dart';
import 'package:shop_app/screens/profile/components/profile_menu.dart';
import 'package:shop_app/screens/profile/components/profile_pic.dart';
import 'package:shop_app/service/auth.service.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isSigned = false;

  @override
  Widget build(BuildContext context) {
    return (!isSigned)
        ? SingleChildScrollView(
            child: Column(
              children: [
                ProfilePic(),
                SizedBox(height: 20),
                ProfileMenu(
                  text: "Tài Khoản",
                  icon: "assets/icons/User Icon.svg",
                  press: () => {},
                ),
                ProfileMenu(
                  text: "Thông báo",
                  icon: "assets/icons/Bell.svg",
                  press: () {},
                ),
                ProfileMenu(
                  text: "Cài đặt",
                  icon: "assets/icons/Settings.svg",
                  press: () {},
                ),
                ProfileMenu(
                  text: "Trợ giúp",
                  icon: "assets/icons/Question mark.svg",
                  press: () {},
                ),
                ProfileMenu(
                  text: "Đăng xuất",
                  icon: "assets/icons/Log out.svg",
                  press: () async {
                    setState(() {
                      isSigned = true;
                    });
                    if (await AuthService().signOut()) {
                      Future.delayed(Duration(milliseconds: 150), () {
                        // Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
                         Navigator.pushNamed(context, SignInScreen.routeName);
                        setState(() {
                          isSigned = false;
                        });
                      });
                    } else {
                      setState(() {
                        isSigned = false;
                      });
                    }
                  },
                ),
              ],
            ),
          )
        : Center(child: CircularProgressIndicator());
  }
}
