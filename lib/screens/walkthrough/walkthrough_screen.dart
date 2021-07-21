import 'package:aking_app/ConfigSize.dart';
import 'package:flutter/material.dart';
import 'components/body_walkthrough.dart';


class WalkThroughScreen extends StatelessWidget {
  const WalkThroughScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
      body: BodyWalkThrough(),
    );
  }
}
