import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/constant.dart';
import 'package:aking_app/screens/profile/components/percentage_project_task.dart';
import 'package:flutter/material.dart';

class StatisticCard extends StatefulWidget {
  const StatisticCard({Key? key}) : super(key: key);

  @override
  _StatisticCardState createState() => _StatisticCardState();
}

class _StatisticCardState extends State<StatisticCard> {

  Future<void> statistics() async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                PercentageProjectTask(
                  nameProject: 'Events',
                  colorTask: primaryColor,
                  percent: 60,
                ),
                PercentageProjectTask(
                  nameProject: 'To do Task',
                  colorTask: blueTaskColor,
                  percent: 20,
                ),
                PercentageProjectTask(
                  nameProject: 'Events',
                  colorTask: greenTaskColor,
                  percent: 60,
                ),
                PercentageProjectTask(
                  nameProject: 'To do Task',
                  colorTask: blueTaskColor,
                  percent: 20,
                ),
                PercentageProjectTask(
                  nameProject: 'Events',
                  colorTask: primaryColor,
                  percent: 60,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){
        statistics();
      },
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
            ]),
        width: double.infinity,
        //height: getProportionateScreenHeight(200),
        child: Material(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getProportionateScreenWidth(24), top: getProportionateScreenHeight(16)),
                child: Text(
                  'Statistic',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PercentageProjectTask(
                    nameProject: 'Events',
                    colorTask: primaryColor,
                    percent: 60,
                  ),
                  PercentageProjectTask(
                    nameProject: 'To do Task',
                    colorTask: blueTaskColor,
                    percent: 20,
                  ),
                  PercentageProjectTask(
                    nameProject: 'Events',
                    colorTask: greenTaskColor,
                    percent: 60,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
