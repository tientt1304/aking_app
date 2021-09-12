import 'package:aking_app/screens/profile/components/profile_menu.dart';
import 'package:flutter/material.dart';

import '../../../ConfigSize.dart';
import '../../../constant.dart';

class BodySettingScreen extends StatelessWidget {
  const BodySettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
              child: Row(
                children: [
                  Container(
                      width: getProportionateScreenWidth(64),
                      height: getProportionateScreenWidth(64),
                      child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/IMG_0842-min.jpg')
                      )
                  ),
                  SizedBox(width: getProportionateScreenWidth(10),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tien Truong', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                      Text('tientt1304@gmail.com', style: TextStyle(
                          fontSize: 15,
                          color: titleTimeColor
                      ),)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24), vertical: getProportionateScreenHeight(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('120', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                      Text('Create Tasks', style: TextStyle(
                          fontSize: 15,
                          color: titleTimeColor
                      ),)
                    ],
                  ),
                  SizedBox(width: getProportionateScreenWidth(10),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('80', style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                      Text('Completed Tasks', style: TextStyle(
                          fontSize: 15,
                          color: titleTimeColor
                      ),)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        ProfileMenu(text: 'Your account', icon: Icon(Icons.person), press: (){}),
        ProfileMenu(text: 'Log out', icon: Icon(Icons.logout), press: (){
          Navigator.of(context).pushNamedAndRemoveUntil(
              'tologin', (Route<dynamic> route) => false);
        })
      ],
    );
  }
}
