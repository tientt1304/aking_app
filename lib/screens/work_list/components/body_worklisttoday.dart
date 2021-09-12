import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/constant.dart';
import 'package:aking_app/screens/work_list/components/taskcard.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BodyWorkListToday extends StatelessWidget {
  const BodyWorkListToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime nextDay = now.add(Duration(days: 1));

    final date = DateFormat.yMMMd().format(now);
    final nextDate = DateFormat.yMMMd().format(nextDay);
    ConfigSize().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(24),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today, $date'.toUpperCase(),
                  style: TextStyle(
                    color: titleTimeColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(14),
                  ),
                ),
                TaskCard(
                  todo: 'Go fishing with Stephen',
                  time: '9 AM',
                  colortask: primaryColor,
                ),
                TaskCard(
                  todo: 'Go fishing with Stephen',
                  time: '9 AM',
                  colortask: primaryColor,
                ),
                TaskCard(
                  todo: 'Go fishing with Stephen',
                  time: '9 AM',
                  colortask: footerColor2,
                ),
                //TaskCard(),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Tomorrow, $nextDate'.toUpperCase(),
                  style: TextStyle(
                    color: titleTimeColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(14),
                  ),
                ),
                TaskCard(
                  todo: 'Read the book Zlatan',
                  time: '9 AM',
                  colortask: footerColor2,
                ),
                TaskCard(
                  todo: 'Meet according with design team at ABC building',
                  time: '9 AM',
                  colortask: footerColor2,
                ),
                TaskCard(
                  todo: 'Go fishing with Stephen',
                  time: '9 AM',
                  colortask: footerColor2,
                ),
                TaskCard(
                  todo: 'Go fishing with Stephen',
                  time: '9 AM',
                  colortask: footerColor2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
