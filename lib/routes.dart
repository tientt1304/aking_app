import 'package:aking_app/screens/forgot_password/components/successful_screen.dart';
import 'package:aking_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:aking_app/screens/forgot_password/reset_password_screen.dart';
import 'package:aking_app/screens/work_list/work_list_screen.dart';
import 'package:flutter/material.dart';
import 'screens/walkthrough/walkthrough_screen.dart';
import 'screens/sign_in/signin_screen.dart';

final routes = <String, WidgetBuilder>{
  "walkingThrough": (context) => WalkThroughScreen(),
  'backWalkThrough': (context) => WalkThroughScreen(),
  "tologin": (context) => SignInScreen(),
  "forgot": (context) => ForgotPasswordScreen(),
  'sendRequest':(context) => ResetPasswordScreen(),
  'changePassword': (context) => SuccessfulScreen(),
  'toWorkListToday': (context) => WorkListScreen(),
  'login': (context) => WorkListScreen(),
};
