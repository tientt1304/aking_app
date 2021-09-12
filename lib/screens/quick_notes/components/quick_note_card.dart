import 'package:flutter/material.dart';

import '../../../ConfigSize.dart';

class QuickNoteCard extends StatelessWidget {
  const QuickNoteCard({Key? key, required this.title, required this.color}) : super(key: key);
  final title, color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Color(0x80E0E0E0).withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 9,
                offset: Offset(5, 5),
              )
            ]),
        width: ConfigSize.screenWidth! - 32.0,
        child: Material(
          child: Padding(
            padding: EdgeInsets.fromLTRB(getProportionateScreenWidth(32), 0, getProportionateScreenWidth(19), getProportionateScreenHeight(21)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: color,
                  width: 120,
                  height: 3,
                ),
                SizedBox(height: getProportionateScreenHeight(15),),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
