import 'package:aking_app/screens/profile/components/body_profile.dart';
import 'package:flutter/material.dart';
import '../../ConfigSize.dart';
import '../../constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kprimaryColor,
        title: Text(
          'Profile',
          style: TextStyle(
            color: kTextColor,
            fontSize: getProportionateScreenHeight(20),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BodyProfileScreen(),
    );
  }
}