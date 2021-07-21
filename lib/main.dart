import 'package:aking_app/routes.dart';
import 'package:aking_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:aking_app/screens/sign_in/signin_screen.dart';
import 'package:aking_app/screens/work_list/work_list_screen.dart';
import 'package:aking_app/theme.dart';
import 'package:flutter/material.dart';
import 'screens/walkthrough/walkthrough_screen.dart';
import 'screens/walkthrough/components/splash_screen.dart';
import 'ConfigSize.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aking App',
      theme: theme(),
      routes: routes,
      home: WorkListScreen(),
      //home: SplashScreen(),
    );
  }
}