import 'package:aking_app/constant.dart';
import 'package:flutter/material.dart';

import '../../ConfigSize.dart';
import '../button_primary.dart';

class AddCheckListForm extends StatefulWidget {
  const AddCheckListForm({Key? key}) : super(key: key);

  @override
  _AddCheckListFormState createState() => _AddCheckListFormState();
}

class _AddCheckListFormState extends State<AddCheckListForm> {
  final _formAddCheckListKey = GlobalKey<FormState>();
  bool? _checked1 = false;
  bool? _checked2 = false;
  bool? _checked3 = false;
  bool? _checked4 = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formAddCheckListKey,
        child: ListBody(children: <Widget>[
          Text(
            'Title',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextFormField(
            maxLines: 2,
            decoration: InputDecoration(
                focusColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)))),
          ),
          SizedBox(
            height: getProportionateScreenHeight(18),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckboxListTile(
                title: Text('List Item 1'),
                value: this._checked1,
                onChanged: (bool? value) {
                  setState(() {
                    this._checked1 = value;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: Text('List Item 2'),
                value: _checked2,
                onChanged: (bool? value) {
                  setState(() {
                    this._checked2 = value;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: Text('List Item 3'),
                value: _checked3,
                onChanged: (bool? value) {
                  setState(() {
                    this._checked3 = value;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: Text('List Item 4',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: _checked4,
                onChanged: (bool? value) {
                  setState(() {
                    this._checked4 = value;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              InkWell(
                  onTap: (){},
                  child: Text(
                    '+ Add new item',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kTextColor
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
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
                    onTap: () {},
                    child: Container(
                      width: ConfigSize.screenWidth! / 9,
                      height: ConfigSize.screenWidth! / 9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: blueTaskColor,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: ConfigSize.screenWidth! / 9,
                      height: ConfigSize.screenWidth! / 9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: pinkTaskColor,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: ConfigSize.screenWidth! / 9,
                      height: ConfigSize.screenWidth! / 9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: greenTaskColor,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: ConfigSize.screenWidth! / 9,
                      height: ConfigSize.screenWidth! / 9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: purpleTaskColor,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: ConfigSize.screenWidth! / 9,
                      height: ConfigSize.screenWidth! / 9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: creamTaskColor,
                      ),
                    )),
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          ButtonPrimary(
            formKey: _formAddCheckListKey,
            title: 'Done',
            doOnPress: (){
              Navigator.pop(context);
            },
          )
        ]));
  }
}
