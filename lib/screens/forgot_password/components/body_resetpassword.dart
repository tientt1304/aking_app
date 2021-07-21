import 'package:aking_app/components/button_primary.dart';
import 'package:aking_app/components/title_content.dart';
import 'package:aking_app/components/visible_textfield.dart';
import 'package:flutter/material.dart';

import '../../../ConfigSize.dart';

class BodyResetPasswordScreen extends StatelessWidget {
  const BodyResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          TitleContent(
            title: 'Reset Password',
            decription: 'Reset code was sent to your email. Please enter the code and create new password',
          ),
          Expanded(
            flex: 4,
            child: SizedBox(
              child: ListView(
                padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenWidth(24),
                  horizontal: getProportionateScreenHeight(12),
                ),
                children: <Widget>[
                  VisibleTextField(title: 'Reset code', hint: 'Enter your number',),
                  SizedBox(height: getProportionateScreenHeight(32),),
                  VisibleTextField(title: 'New password', hint: 'Enter your password',),
                  SizedBox(height: getProportionateScreenHeight(32),),
                  VisibleTextField(title: 'Confirm password', hint: 'Enter your confirm password',),
                  SizedBox(height: getProportionateScreenHeight(32),),
                  ButtonPrimary(title: 'Change password', routeName: 'changePassword',),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
