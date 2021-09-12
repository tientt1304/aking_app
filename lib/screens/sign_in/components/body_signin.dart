import 'package:aking_app/components/title_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'form_signin.dart';

class BodySignIn extends StatefulWidget {
  @override
  _BodySignInState createState() => _BodySignInState();
}

class _BodySignInState extends State<BodySignIn> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TitleContent(
          title: 'Welcome back',
          decription: 'Sign in to continue',
        ),
        Expanded(
          flex: 4,
          child: SignInForm(),
        )
      ],
    );
  }
}
