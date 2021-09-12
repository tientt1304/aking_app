import 'package:aking_app/ConfigSize.dart';
import 'package:flutter/material.dart';

class GeneralProjectCard extends StatelessWidget {
  const GeneralProjectCard({Key? key, required this.projectName, required this.numberOfTasks, required this.colorTask}) : super(key: key);
  final projectName, numberOfTasks, colorTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      width: ConfigSize.screenWidth! / 2.5,
      height: getProportionateScreenHeight(100),
      decoration: BoxDecoration(
        color: colorTask,
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(24), bottom: getProportionateScreenHeight(6)),
            child: Text(
              projectName,
              style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(24), bottom: getProportionateScreenHeight(6)),
            child: Text(
              '$numberOfTasks Tasks',
              style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
