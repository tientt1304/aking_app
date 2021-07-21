import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalkthroughContent extends StatelessWidget {
  const WalkthroughContent({
    Key? key,
    this.image,
    this.text1,
    this.text2,
  }) : super(key: key);
  final text1, text2, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          width: getProportionateScreenWidth(305),
          height: getProportionateScreenHeight(252),
        ),
        SizedBox(height: getProportionateScreenHeight(50),),
        Text(
          text1,
          style: TextStyle(
            fontSize: getProportionateScreenHeight(24),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            fontFamily: 'AvenirMedium',
            fontSize: getProportionateScreenHeight(18),
          ),
        ),
      ],
    );
  }
}