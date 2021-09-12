import 'package:aking_app/constant.dart';
import 'package:aking_app/screens/quick_notes/components/quick_note_card.dart';
import 'package:flutter/material.dart';


class BodyQuickNotesScreen extends StatelessWidget {
  const BodyQuickNotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickNoteCard(
            title: 'Meeting with Jessica in Central Park at 10:30PM',
            color: blueTaskColor,
          ),
          QuickNoteCard(
            title: 'Homework today',
            color: blueTaskColor,
          ),
          QuickNoteCard(
            title: 'Replace dashboard icon with more colorful ones',
            color: pinkTaskColor,
          ),
          QuickNoteCard(
            title: 'Meeting with Jessica in Central Park at 10:30PM',
            color: blueTaskColor,
          ),
        ],
      ),
    );
  }
}
