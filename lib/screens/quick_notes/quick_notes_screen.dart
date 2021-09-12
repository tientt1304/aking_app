import 'package:aking_app/screens/quick_notes/components/body_quick_notes.dart';
import 'package:flutter/material.dart';
import '../../ConfigSize.dart';
import '../../constant.dart';

class QuickNotesScreen extends StatelessWidget {
  const QuickNotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kprimaryColor,
        title: Text(
          'Quick Notes',
          style: TextStyle(
            color: kTextColor,
            fontSize: getProportionateScreenHeight(20),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BodyQuickNotesScreen(),
    );
  }
}