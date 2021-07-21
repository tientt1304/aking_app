import 'package:flutter/material.dart';

import '../ConfigSize.dart';
import '../constant.dart';

class VisibleTextField extends StatelessWidget {
  const VisibleTextField({Key? key, this.title, this.hint}) : super(key: key);
  final title, hint;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'AvernirMedium',
              fontSize: getProportionateScreenHeight(20),
              color: kTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: hint,
            ),
          ),
        ],
      ),
    );;
  }
}
