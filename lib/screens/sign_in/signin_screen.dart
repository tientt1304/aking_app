import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/screens/sign_in/components/body_signin.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: BodySignIn(),
    );
  }
}
