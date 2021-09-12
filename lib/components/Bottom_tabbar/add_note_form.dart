import 'package:aking_app/components/button_primary.dart';
import 'package:aking_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../ConfigSize.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  _AddNoteFormState createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final _formAddNoteKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formAddNoteKey,
        child: ListBody(children: <Widget>[
          Text(
            'Description',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextFormField(
            maxLines: 3,
            decoration: InputDecoration(
                focusColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)))),
          ),
          SizedBox(height: getProportionateScreenHeight(34),),
          Text(
            'Choose color',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                    onTap: () {
                    },
                    child: Container(
                      width: ConfigSize.screenWidth!/9,
                      height: ConfigSize.screenWidth!/9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: blueTaskColor,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                    onTap: () {
                    },
                    child: Container(
                      width: ConfigSize.screenWidth!/9,
                      height: ConfigSize.screenWidth!/9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: pinkTaskColor,
                      ),

                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                    onTap: () {
                    },
                    child: Container(
                      width: ConfigSize.screenWidth!/9,
                      height: ConfigSize.screenWidth!/9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: greenTaskColor,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                    onTap: () {
                    },
                    child: Container(
                      width: ConfigSize.screenWidth!/9,
                      height: ConfigSize.screenWidth!/9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: purpleTaskColor,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                    onTap: () {
                    },
                    child: Container(
                      width: ConfigSize.screenWidth!/9,
                      height: ConfigSize.screenWidth!/9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: creamTaskColor,
                      ),
                    )),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(40),),
          ButtonPrimary(
            formKey: _formAddNoteKey,
            title: 'Done',
            doOnPress: (){
              Navigator.pop(context);
            },
          )
        ]));
  }
}
