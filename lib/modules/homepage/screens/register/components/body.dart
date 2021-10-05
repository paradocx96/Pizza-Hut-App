
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:pizzahut/modules/homepage/screens/login/components/forgot_password_check.dart';
import 'package:pizzahut/modules/homepage/screens/register/components/rounded_button_red.dart';
import 'package:pizzahut/modules/homepage/screens/register/components/rounded_button_white.dart';
import 'package:pizzahut/modules/homepage/screens/register/components/rounded_input_field_address.dart';
import 'package:pizzahut/modules/homepage/screens/register/components/rounded_input_field_contactno.dart';
import 'package:pizzahut/modules/homepage/screens/register/components/rounded_input_field_email.dart';
import 'package:pizzahut/modules/homepage/screens/register/components/rounded_input_field_username.dart';
import 'package:pizzahut/modules/homepage/screens/register/components/rounded_password_field.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/signin_button_red.dart';
//import 'package:pizzahut/modules/homepage/screens/gets_started/gets_started_screen.dart';
//import 'package:pizzahut/modules/homepage/screens/splash/splash_screen.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.50),
            RoundedInputFieldEmail(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedInputFieldAddress(
              hintText: "Address",
              onChanged: (value) {},
            ),
            RoundedInputFieldContactNo(
              hintText: "Phone",
              onChanged: (value) {},
            ),
            RoundedInputFieldUsername(
              hintText: "Username",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButtonRed(
              text: "SIGN UP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
             Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25),

            ),
            SizedBox(height: size.height * 0.02),
            RoundedButtonWhite(
              text: "Sign up with Google",
              press: () {},
            ),
            SizedBox(height: size.height * 0.05),
          ],
        ),
      ),
    );
  }
}