import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/screens/projects/components/project_card.dart';
import 'package:flutter/material.dart';

class BodyProjectsScreen extends StatelessWidget {
  const BodyProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ProjectCard(
                projectColor: 'assets/icons/blueDot.svg',
                title: 'Personal',
                numbertasks: 10,
              ),
              ProjectCard(
                projectColor: 'assets/icons/pinkDot.svg',
                title: 'Teamworks',
                numbertasks: 5,
              )
            ],
          ),
          Row(
            children: [
              ProjectCard(
                projectColor: 'assets/icons/greenDot.svg',
                title: 'Home',
                numbertasks: 10,
              ),
              ProjectCard(
                projectColor: 'assets/icons/purpleDot.svg',
                title: 'Meet',
                numbertasks: 10,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: (){},
              child: Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF6074F9),
                fixedSize: Size(ConfigSize.screenWidth!/4.8, ConfigSize.screenWidth!/4.8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
