import 'package:aking_app/components/button_primary.dart';
import 'package:aking_app/components/title_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../ConfigSize.dart';
import '../../../constant.dart';

class BodyResetPasswordScreen extends StatefulWidget {
  const BodyResetPasswordScreen({Key? key}) : super(key: key);

  @override
  _BodyResetPasswordScreenState createState() => _BodyResetPasswordScreenState();
}

class _BodyResetPasswordScreenState extends State<BodyResetPasswordScreen> {
  var _formKeyReset = GlobalKey<FormState>();
  var code, newPassword, confirmPassword;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TitleContent(
          title: 'Reset Password',
          decription:
              'Reset code was sent to your email. Please enter the code and create new password',
        ),
        Expanded(
          flex: 4,
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenWidth(24),
                horizontal: getProportionateScreenHeight(12),
              ),
              child: Form(
                key: _formKeyReset,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Reset code',
                      style: TextStyle(
                        fontFamily: 'AvernirMedium',
                        fontSize: getProportionateScreenHeight(20),
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your number',
                      ),
                      validator: (text){
                        if(text!.length != 4){
                          return "Incorrect code";
                        }
                        else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(32),
                    ),
                    Text(
                      'New password',
                      style: TextStyle(
                        fontFamily: 'AvernirMedium',
                        fontSize: getProportionateScreenHeight(20),
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                      ),
                      validator: (text){
                        if (text!.isEmpty) {
                          return "Please enter password";
                        } else if (text.length < 8) {
                          return "Password must contain at least 8 characters";
                        } else {
                          newPassword = text;
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(32),
                    ),
                    Text(
                      'Confirm password',
                      style: TextStyle(
                        fontFamily: 'AvernirMedium',
                        fontSize: getProportionateScreenHeight(20),
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your confirm password',
                      ),
                      validator: (text){
                        if(text != newPassword){
                          return "Password wrong";
                        }
                        else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(32),
                    ),
                    ButtonPrimary(
                      formKey: _formKeyReset,
                      title: 'Change password',
                      doOnPress: (){
                        if (_formKeyReset.currentState!.validate()) {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              'toWorkListToday', (Route<dynamic> route) => false);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
