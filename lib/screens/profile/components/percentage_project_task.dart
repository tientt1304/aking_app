import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../ConfigSize.dart';

class PercentageProjectTask extends StatelessWidget {
  const PercentageProjectTask({Key? key, required this.percent, required this.nameProject, required this.colorTask}) : super(key: key);
  final percent, nameProject, colorTask;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(7), vertical: getProportionateScreenHeight(7)),
      child: Column(
        children: [
          CircularPercentIndicator(
            progressColor: colorTask,
            percent: percent/100,
            animation: true,
            radius: getProportionateScreenWidth(80.0),
            lineWidth: 3,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text('$percent%',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Text(nameProject,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),)
        ],
      ),
    );
  }
}
