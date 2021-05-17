import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import '../../../models/user.model.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  final UserModel userModel;

  const Body({Key key, this.userModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text("Thông tin cá nhân", style: headingStyle),
                // Text(
                //   "Complete your details or continue  \nwith social media",
                //   textAlign: TextAlign.center,
                // ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                CompleteProfileForm(userModel: userModel),
                SizedBox(height: getProportionateScreenHeight(30)),
                // Text(
                //   "By continuing your confirm that you agree \nwith our Term and Condition",
                //   textAlign: TextAlign.center,
                //   style: Theme.of(context).textTheme.caption,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
