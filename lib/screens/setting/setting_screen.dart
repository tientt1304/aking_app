import 'package:flutter/material.dart';
import '../../ConfigSize.dart';
import '../../constant.dart';
import 'components/body_setting.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kprimaryColor,
        title: Text(
          'Setting',
          style: TextStyle(
            color: kTextColor,
            fontSize: getProportionateScreenHeight(20),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BodySettingScreen(),
    );
  }
}