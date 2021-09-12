import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../ConfigSize.dart';
class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, this.projectColor, this.title, this.numbertasks}) : super(key: key);
  final projectColor, title, numbertasks;

  @override
  Widget build(BuildContext context) {
     return InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFE3E3E3).withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(0, 2),
              )
            ]
        ),
        width: ConfigSize.screenWidth!/2.4,
        height: ConfigSize.screenHeight!/3.5,
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getProportionateScreenHeight(16),),
                SvgPicture.asset(projectColor),
                SizedBox(height: getProportionateScreenHeight(50),),
                Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                SizedBox(height: getProportionateScreenHeight(16),),
                Text('$numbertasks Tasks')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
