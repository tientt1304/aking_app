import 'package:flutter/material.dart';

import '../ConfigSize.dart';
import '../constant.dart';

class InvisibleTextField extends StatelessWidget {
  const InvisibleTextField({Key? key, this.title, this.hint}) : super(key: key);
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
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            obscureText: true,
            decoration: InputDecoration(
              hintText: hint,
            ),
          ),
        ],
      ),
    );
  }
}
