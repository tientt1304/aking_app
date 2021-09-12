import 'package:aking_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key? key, @required this.text, @required this.icon, @required this.press}) : super(key: key);
  final String? text;
  final Icon? icon;
  final VoidCallback? press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: kTextColor,
          textStyle: TextStyle(
            fontSize: 16,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          padding: EdgeInsets.all(30)
        ),
        onPressed: press,
        child: Row(
          children: [
            icon!,
            SizedBox(width: 20),
            Expanded(child: Text(text!)),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
