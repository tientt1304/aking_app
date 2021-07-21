import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/components/button_primary.dart';
import 'package:aking_app/components/invisible_textfield.dart';
import 'package:aking_app/components/visible_textfield.dart';
import 'package:aking_app/constant.dart';
import 'package:flutter/material.dart';


class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(24),
          horizontal: getProportionateScreenHeight(12),
        ),
        children: <Widget>[
          VisibleTextField(title: 'Username', hint: 'tientt1304@gmail.com'),
          SizedBox(height: getProportionateScreenHeight(32),),
          InvisibleTextField(title: 'Password', hint: 'Enter your password',),
          SizedBox(height: getProportionateScreenHeight(12),),
          Container(
            padding: EdgeInsets.only(right: getProportionateScreenWidth(55)),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'forgot');
              },
              child: Text(
                'Forgot password',
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(18),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(80),),
          ButtonPrimary(title:'Log In', routeName: 'login'),
        ],
      ),
    );
  }
}