import 'package:flutter/material.dart';
import '../../ConfigSize.dart';
import 'components/body_forgotpassword.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: BodyForgotPasswordScreen(),
    );
  }
}
