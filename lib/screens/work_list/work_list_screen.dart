import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/constant.dart';
import 'package:aking_app/screens/work_list/components/body_worklistmonth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/body_worklisttoday.dart';

class WorkListScreen extends StatelessWidget {
  const WorkListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: primaryColor,
          title: Text('Work List', style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
          actions: <Widget>[
            InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(16)),
                  child: SvgPicture.asset(
                    'assets/icons/tune.svg',
                    height: getProportionateScreenHeight(21),
                    width: getProportionateScreenWidth(20),
                  ),
                )
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Today',),
              Tab(text: 'Month',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            BodyWorkListToday(),
            BodyWorkListMonth(),
          ],
        ),
      ),
    );
  }
}
