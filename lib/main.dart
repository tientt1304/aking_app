import 'package:aking_app/routes.dart';
import 'package:aking_app/screens/sign_in/signin_screen.dart';
import 'package:aking_app/screens/walkthrough/walkthrough_screen.dart';
import 'package:aking_app/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      //home: SignInScreen(),
      home: WalkThroughScreen(),
    );
  }
}