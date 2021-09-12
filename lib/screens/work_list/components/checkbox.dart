import 'package:aking_app/ConfigSize.dart';
import 'package:flutter/material.dart';

class CheckBoxTask extends StatefulWidget {
  final bool? isChecked;
  const CheckBoxTask({Key? key, this.isChecked,}) : super(key: key);

  @override
  _CheckBoxTaskState createState() => _CheckBoxTaskState();
}

class _CheckBoxTaskState extends State<CheckBoxTask> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getProportionateScreenWidth(25)),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isSelected = !_isSelected;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,
          decoration: BoxDecoration(
              color: _isSelected ? Color(0xFFF96060):  Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: _isSelected ? null : Border.all(
                color: Color(0xFF6074F9),
                width: 3,
              )
          ),
          width: 20,
          height: 20,
          child: _isSelected ? Icon(
            Icons.check,
            color: Colors.white,
            size:  12,
          ) : null,
        ),
      ),
    );
  }
}
