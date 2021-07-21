import 'package:aking_app/components/button_primary.dart';
import 'package:aking_app/components/title_content.dart';
import 'package:aking_app/components/visible_textfield.dart';
import 'package:flutter/material.dart';

import '../../../ConfigSize.dart';

class BodyForgotPasswordScreen extends StatelessWidget {
  const BodyForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          TitleContent(
            title: 'Forgot Password',
            decription: 'Reset code was sent to your email. Please enter the code and creae new password',
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
                  VisibleTextField(title: 'Username'),
                  SizedBox(height: getProportionateScreenHeight(32),),
                  ButtonPrimary(title: 'Send Request', routeName: 'sendRequest',),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
