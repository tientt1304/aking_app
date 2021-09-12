import 'package:flutter/material.dart';

import '../ConfigSize.dart';
import '../constant.dart';

class TitleContent extends StatelessWidget {
  const TitleContent({Key? key, this.title, this.decription}) : super(key: key);
  final title, decription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(24),
        horizontal: getProportionateScreenHeight(12),
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontFamily: 'AvernirDemi',
                fontSize: getProportionateScreenHeight(32),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(12),
            ),
            Text(
              decription,
              style: TextStyle(
                fontFamily: 'AvernirMedium',
                fontSize: getProportionateScreenHeight(16),
                color: descTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
