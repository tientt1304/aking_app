import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/components/Bottom_tabbar/add_task_form.dart';
import 'package:aking_app/constant.dart';
import 'package:aking_app/screens/profile/profile_screen.dart';
import 'package:aking_app/screens/projects/projects_screen.dart';
import 'package:aking_app/screens/quick_notes/quick_notes_screen.dart';
import 'package:aking_app/screens/work_list/work_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'add_checklist_form.dart';
import 'add_note_form.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  Future<void> addTask() async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: AddTaskForm(),
          ),
        );
      },
    );
  }

  Future<void> addNote() async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: AddNoteForm(),
          ),
        );
      },
    );
  }

  Future<void> addCheckList() async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: AddCheckListForm(),
          ),
        );
      },
    );
  }


  Future<void> openAlert() async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                TextButton(
                  child: Text(
                    'Add Task',
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: getProportionateScreenHeight(18),
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    addTask();
                  },
                ),
                TextButton(
                  child: Text(
                    'Add Quick Note',
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: getProportionateScreenHeight(18),
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    addNote();
                  },
                ),
                TextButton(
                  child: Text(
                    'Add Check List',
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: getProportionateScreenHeight(18),
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    addCheckList();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  int currentTab = 0;
  final List<Widget> screens = [
    WorkListScreen(),
    ProjectsScreen(),
    QuickNotesScreen(),
    ProfileScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = WorkListScreen();

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
        onPressed: () {
          openAlert();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: bottomTabBarColor,
        shape: CircularNotchedRectangle(),
        notchMargin: -10,
        child: Container(
            height: getProportionateScreenHeight(60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: getProportionateScreenWidth(40),
                      onPressed: () {
                        setState(() {
                          currentScreen = WorkListScreen();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: ConfigSize.screenWidth! / 8,
                            child: SvgPicture.asset(
                              'assets/icons/mytask.svg',
                              height: getProportionateScreenHeight(24),
                              width: getProportionateScreenWidth(24),
                              color: currentTab == 0
                                  ? kprimaryColor
                                  : nonClickColor,
                            ),
                          ),
                          Text(
                            'My Tasks',
                            style: TextStyle(
                              fontSize: getProportionateScreenHeight(12),
                              color: currentTab == 0
                                  ? kprimaryColor
                                  : nonClickColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: getProportionateScreenWidth(40),
                      onPressed: () {
                        setState(() {
                          currentScreen = ProjectsScreen();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: ConfigSize.screenWidth! / 8,
                            child: SvgPicture.asset(
                              'assets/icons/menu.svg',
                              height: getProportionateScreenHeight(24),
                              width: getProportionateScreenWidth(24),
                              color: currentTab == 1
                                  ? kprimaryColor
                                  : nonClickColor,
                            ),
                          ),
                          Text(
                            'Menu',
                            style: TextStyle(
                              fontSize: getProportionateScreenHeight(12),
                              color: currentTab == 1
                                  ? kprimaryColor
                                  : nonClickColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: getProportionateScreenWidth(40),
                      onPressed: () {
                        setState(() {
                          currentScreen = QuickNotesScreen();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: ConfigSize.screenWidth! / 8,
                            child: SvgPicture.asset(
                              'assets/icons/quick.svg',
                              height: getProportionateScreenHeight(24),
                              width: getProportionateScreenWidth(24),
                              color: currentTab == 2
                                  ? kprimaryColor
                                  : nonClickColor,
                            ),
                          ),
                          Text(
                            'Quick',
                            style: TextStyle(
                              fontSize: getProportionateScreenHeight(12),
                              color: currentTab == 2
                                  ? kprimaryColor
                                  : nonClickColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: getProportionateScreenWidth(40),
                      onPressed: () {
                        setState(() {
                          currentScreen = ProfileScreen();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: ConfigSize.screenWidth! / 8,
                            child: SvgPicture.asset(
                              'assets/icons/profile.svg',
                              height: getProportionateScreenHeight(24),
                              width: getProportionateScreenWidth(24),
                              color: currentTab == 3
                                  ? kprimaryColor
                                  : nonClickColor,
                            ),
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              fontSize: getProportionateScreenHeight(12),
                              color: currentTab == 3
                                  ? kprimaryColor
                                  : nonClickColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
