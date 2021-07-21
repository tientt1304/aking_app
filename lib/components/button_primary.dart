import 'package:flutter/material.dart';

import '../ConfigSize.dart';
import '../constant.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({Key? key, this.title, this.routeName}) : super(key: key);
  final title, routeName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(327),
      height: getProportionateScreenHeight(48),
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'AvenirDemi',
            fontSize: getProportionateScreenHeight(18),
            fontWeight: FontWeight.bold,
          ),
        ),
        color: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}