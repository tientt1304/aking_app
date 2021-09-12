import 'package:aking_app/components/button_primary.dart';
import 'package:aking_app/components/title_content.dart';
import 'package:flutter/material.dart';

import '../../../ConfigSize.dart';
import '../../../constant.dart';

class BodyForgotPasswordScreen extends StatefulWidget {
  const BodyForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _BodyForgotPasswordScreenState createState() => _BodyForgotPasswordScreenState();
}

class _BodyForgotPasswordScreenState extends State<BodyForgotPasswordScreen> {
  var _formForgotPassword = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TitleContent(
          title: 'Forgot Password',
          decription:
              'Reset code was sent to your email. Please enter the code and creae new password',
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
                key: _formForgotPassword,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Username',
                      style: TextStyle(
                        fontFamily: 'AvernirMedium',
                        fontSize: getProportionateScreenHeight(20),
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (text){
                        if(text!.isEmpty){
                          return "Please enter email";
                        }
                        else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(32),
                    ),
                    ButtonPrimary(
                      formKey: _formForgotPassword,
                      title: 'Send Request',
                      doOnPress: (){
                        if (_formForgotPassword.currentState!.validate()){
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              'sendRequest', (Route<dynamic> route) => false);
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
