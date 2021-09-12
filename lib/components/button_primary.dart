import 'package:flutter/material.dart';

import '../ConfigSize.dart';
import '../constant.dart';
class ButtonPrimary extends StatelessWidget {
  ButtonPrimary({Key? key, this.title, required this.formKey, required this.doOnPress}) : super(key: key);
  final title;
  final formKey;
  final Function() doOnPress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: getProportionateScreenWidth(327),
        height: getProportionateScreenHeight(48),
        child: ElevatedButton(
          onPressed: doOnPress,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'AvenirDemi',
              fontSize: getProportionateScreenHeight(18),
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
          ),
          ),
        ),
      ),
    );
  }
}