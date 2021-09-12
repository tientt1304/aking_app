import 'package:aking_app/components/button_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../ConfigSize.dart';
import '../../constant.dart';

class AddTaskForm extends StatefulWidget {
  const AddTaskForm({Key? key}) : super(key: key);

  @override
  _AddTaskFormState createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  final _formAddTaskKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formAddTaskKey,
        child: ListBody(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'For ',
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey.withOpacity(0.2)),
                child: Text(
                  "Asignee",
                  style: TextStyle(fontSize: 14, fontFamily: 'AfvernirMedium'),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(50),
              ),
              Text(
                'In ',
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey.withOpacity(0.2)),
                child: Text(
                  "Project",
                  style: TextStyle(fontSize: 14, fontFamily: 'AvernirMedium'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(24),
          ),
          Container(
            height: getProportionateScreenHeight(66),
            padding: EdgeInsets.all(10),
            color: Colors.grey.withOpacity(0.2),
            child: TextField(
              decoration:
                  InputDecoration(hintText: "Title", border: InputBorder.none),
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(16),
          ),
          Text(
            'Description',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'AfvernirMedium',
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                        focusColor: Colors.grey.withOpacity(0.2),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5)))),
                  ),
                  Container(
                    height: getProportionateScreenHeight(50),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: InkWell(
                            child:
                                SvgPicture.asset('assets/icons/attachment.svg'),
                            onTap: () {},
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
          Container(
            height: getProportionateScreenHeight(66),
            padding: EdgeInsets.all(10),
            color: Colors.grey.withOpacity(0.2),
            child: TextField(
              decoration:
              InputDecoration(hintText: "Due Date", border: InputBorder.none),
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(24),
          ),
          Text('Add Member', style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.grey.withOpacity(0.2)),
            child: Text(
              "Anyone",
              style: TextStyle(fontSize: 14, fontFamily: 'AfvernirMedium'),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(35),
          ),
          ButtonPrimary(
            formKey: _formAddTaskKey,
            title: 'Add Task',
            doOnPress: (){
              Navigator.pop(context);
            },
          )
        ]));
  }
}
