import 'package:aking_app/screens/projects/components/body_projects.dart';
import 'package:flutter/material.dart';
import '../../ConfigSize.dart';
import '../../constant.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kprimaryColor,
        title: Text(
          'Projects',
          style: TextStyle(
            color: kTextColor,
            fontSize: getProportionateScreenHeight(20),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BodyProjectsScreen(),
    );
  }
}
