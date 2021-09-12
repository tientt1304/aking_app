import 'package:aking_app/screens/work_list/components/task_priority.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../ConfigSize.dart';
import '../../../constant.dart';
import 'checkbox.dart';


class TaskCard extends StatefulWidget {
  const TaskCard({Key? key, this.todo, this.time, this.colortask})
      : super(key: key);
  final todo, time, colortask;

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  Future<void> showTask() async{
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.close)),
                      SizedBox(width: getProportionateScreenWidth(170),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(getProportionateScreenWidth(10),getProportionateScreenWidth(5), 0 ,getProportionateScreenWidth(10)),
                    child: Text(widget.todo, style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            )
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Column(
            children: [
              InkWell(
                onLongPress: (){showTask();},
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFE0E0E0).withOpacity(0.25),
                        spreadRadius: -5,
                        blurRadius: 20,
                        offset: Offset(5, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(16),
                      horizontal: getProportionateScreenWidth(16)),
                  child: Material(
                    color: kprimaryColor,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(25),
                          top: getProportionateScreenHeight(13),
                          bottom: getProportionateScreenHeight(13)),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CheckBoxTask(),
                            ],
                          ),
                          Container(
                            width: (ConfigSize.screenWidth! -
                                getProportionateScreenWidth(107)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  widget.todo,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                  style: TextStyle(
                                    fontFamily: 'AvernirMedium',
                                    fontSize: getProportionateScreenHeight(16),
                                    color: kTextColor,
                                  ),
                                ),
                                Text(
                                  widget.time,
                                  style: TextStyle(
                                    fontFamily: 'AvernirMedium',
                                    fontSize: getProportionateScreenHeight(16),
                                    color: descTextColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TaskPriority(
                                colorTask: widget.colortask,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(17)),
                height: getProportionateScreenHeight(70),
                width: getProportionateScreenHeight(60),
                child: SvgPicture.asset(
                  'assets/icons/edit.svg',
                )
              ),
              Container(
                height: getProportionateScreenHeight(70),
                width: 1,
                color: Color(0xFF000000).withOpacity(.1),
              ),
              Padding(
                padding: EdgeInsets.only(right: getProportionateScreenWidth(13)),
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(17)),
                  height: getProportionateScreenHeight(70),
                  width: getProportionateScreenHeight(58),
                  child: SvgPicture.asset(
                    'assets/icons/delete.svg',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
