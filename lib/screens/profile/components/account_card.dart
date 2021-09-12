import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../ConfigSize.dart';
import '../../../constant.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({Key? key, required this.name, required this.email, required this.numberOfCreateTasks, required this.numberOfCompletedTasks}) : super(key: key);
  final name, email, numberOfCreateTasks, numberOfCompletedTasks;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFE3E3E3).withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 2),
            )
          ]
      ),
      width: double.infinity,
      //height: getProportionateScreenHeight(200),
      child: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  child: InkWell(
                      onTap: (){
                        print('print');
                        Navigator.pushNamed(context, 'setting');
                      },
                      child: Icon(Icons.settings)
                  ),
                ),
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
                          Text(name, style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),),
                          Text(email, style: TextStyle(
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
                          Text('$numberOfCreateTasks', style: TextStyle(
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
                          Text('$numberOfCompletedTasks', style: TextStyle(
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
            )
          ],
        ),
      ),
    );
  }
}
