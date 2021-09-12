import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aking_app/ConfigSize.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    delay(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            SizedBox(height: getProportionateScreenHeight(12.0),),
            SvgPicture.asset('assets/images/aking.svg'),
          ],
        ),
      ),
    );
  }
  void delay(BuildContext context){
    Future.delayed(Duration(seconds: 3), () {
      // 2 seconds over, navigate to WalkingThrough.
      Navigator.pushNamed(context, "walkingThrough");
    });
  }
}
