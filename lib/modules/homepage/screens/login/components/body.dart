
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:pizzahut/modules/homepage/screens/login/components/forgot_password_check.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/rounded_button_red.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/rounded_button_white.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/rounded_input_field.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/rounded_password_field.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/signin_button_red.dart';
import 'package:pizzahut/modules/homepage/screens/register/register_screen.dart';
//import 'package:pizzahut/modules/homepage/screens/gets_started/gets_started_screen.dart';
//import 'package:pizzahut/modules/homepage/screens/splash/splash_screen.dart';

import '../login_screen.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        //Add padding to managed UI
        padding: new EdgeInsets.all(33.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.45),
            RoundedInputField(
              hintText: "Username",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButtonRed(
              text: "SIGN IN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.04),
             Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25),

            ),
            SizedBox(height: size.height * 0.02),
            RoundedButtonWhite(
              text: "Sign in with Google",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}