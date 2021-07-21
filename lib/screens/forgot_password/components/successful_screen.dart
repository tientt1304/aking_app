import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/components/title_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    delay(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/successful.svg',
              height: getProportionateScreenHeight(170),
              width: getProportionateScreenWidth(162),
            ),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            Text(
              'Successful!',
              style: TextStyle(
                fontSize: getProportionateScreenHeight(32),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              'You have successfully change password. \nPlease use your new password when logging in.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'AvernirMedium',
                fontSize: getProportionateScreenHeight(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void delay(BuildContext context){
    Future.delayed(Duration(seconds: 3), () {
      // 2 seconds over, navigate to WalkingThrough.
      Navigator.pushNamed(context, 'toWorkListToday');
      //Navigator.push(context, MaterialPageRoute(builder: (_) => WalkThroughScreen()));
    });
  }
}