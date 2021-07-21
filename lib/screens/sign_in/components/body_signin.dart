import 'package:aking_app/components/title_content.dart';
import 'package:flutter/material.dart';
import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/constant.dart';
import 'form_signin.dart';

class BodySignIn extends StatefulWidget {
  @override
  _BodySignInState createState() => _BodySignInState();
}

class _BodySignInState extends State<BodySignIn> {
  String valueEmail = '';
  String valuePassword = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        TitleContent(
          title: 'Welcome back',
          decription: 'Sign in to continue',
        ),
        Expanded(
          flex: 4,
          child: SignInForm(),
        )
      ],
    ));
  }
}
