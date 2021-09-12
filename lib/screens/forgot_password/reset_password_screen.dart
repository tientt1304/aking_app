import 'package:flutter/material.dart';
import '../../ConfigSize.dart';
import 'components/body_resetpassword.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: BodyResetPasswordScreen(),
    );
  }
}
