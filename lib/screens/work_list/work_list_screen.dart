import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/constant.dart';
import 'package:aking_app/screens/work_list/components/body_worklistmonth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/body_worklisttoday.dart';

class WorkListScreen extends StatefulWidget {
  const WorkListScreen({Key? key}) : super(key: key);

  @override
  _WorkListScreenState createState() => _WorkListScreenState();
}

class _WorkListScreenState extends State<WorkListScreen> {
  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: primaryColor,
          title: Text(
            'Work List',
            style: TextStyle(
              fontSize: getProportionateScreenHeight(20),
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(16)),
              child: PopupMenuButton(
                child: SvgPicture.asset(
                  'assets/icons/tune.svg',
                  height: getProportionateScreenHeight(21),
                  width: getProportionateScreenWidth(20),
                ),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Text(
                        'Imcomplete Tasks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(17),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        'Completed Tasks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(17),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        'All Tasks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(17),
                        ),
                      ),
                    )
                  ];
                },
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Today',
              ),
              Tab(
                text: 'Month',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BodyWorkListToday(),
            BodyWorkListMonth(),
          ],
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
