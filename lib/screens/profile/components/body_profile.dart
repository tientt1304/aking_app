import 'package:aking_app/constant.dart';
import 'package:aking_app/screens/profile/components/account_card.dart';
import 'package:aking_app/screens/profile/components/general_project_card.dart';
import 'package:aking_app/screens/profile/components/statistic_card.dart';
import 'package:flutter/material.dart';


class BodyProfileScreen extends StatelessWidget {
  const BodyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AccountCard(
            name: 'Tien Truong',
            email: 'tientt1304@gmail.com',
            numberOfCreateTasks: 120,
            numberOfCompletedTasks: 80
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GeneralProjectCard(
                projectName: 'Events',
                colorTask: primaryColor,
                numberOfTasks: 12,
              ),
              GeneralProjectCard(
                projectName: 'To do Task',
                colorTask: blueTaskColor,
                numberOfTasks: 12,
              ),
              GeneralProjectCard(
                projectName: 'Events',
                colorTask: greenTaskColor,
                numberOfTasks: 12,
              ),
            ],
          )
        ),
        StatisticCard()
      ],
    );
  }
}
