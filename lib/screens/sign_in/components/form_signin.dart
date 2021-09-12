import 'package:aking_app/ConfigSize.dart';
import 'package:aking_app/components/button_primary.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  var _formKeySignIn = GlobalKey<FormState>();
  var userName;
  var password;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(24),
          horizontal: getProportionateScreenHeight(12),
        ),
        child: Form(
          key: _formKeySignIn,
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
                decoration: InputDecoration(
                  hintText: 'tientt1304@gmail.com',
                ),
                validator: (text) {
                  if (text!.isEmpty) {
                    return "Please enter your email";
                  } else {
                    userName = text;
                    return null;
                  }
                },
              ),
              SizedBox(
                height: getProportionateScreenHeight(32),
              ),
              Text(
                'Password',
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
                validator: (text) {
                  if (text!.isEmpty) {
                    return "Please enter password";
                  } else if (text.length < 8) {
                    return "Password must contain at least 8 characters";
                  } else {
                    password = text;
                    return null;
                  }
                },
              ),
              SizedBox(
                height: getProportionateScreenHeight(12),
              ),
              Container(
                //margin: EdgeInsets,
                padding: EdgeInsets.only(
                    left: ConfigSize.screenWidth! / 2 +
                        getProportionateScreenWidth(55)),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'forgot');
                  },
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(80),
              ),
              ButtonPrimary(
                title: 'Log In',
                formKey: _formKeySignIn,
                doOnPress: () {
                  if (_formKeySignIn.currentState!.validate()) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        'toWorkListToday', (Route<dynamic> route) => false);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
