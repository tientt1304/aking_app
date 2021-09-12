import 'package:aking_app/ConfigSize.dart';
import 'package:flutter/material.dart';

class TaskPriority extends StatelessWidget {
  const TaskPriority({Key? key, this.colorTask}) : super(key: key);
  final colorTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(4),
      height: getProportionateScreenHeight(21),
      decoration: BoxDecoration(
        color: colorTask,
      ),
    );
  }
}
