
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:pizzahut/modules/homepage/screens/login/components/forgot_password_check.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/rounded_button_red.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/rounded_button_white.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/rounded_input_field.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/rounded_password_field.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/signin_button_red.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/signup_button_white.dart';
import 'package:pizzahut/modules/homepage/screens/register/register_screen.dart';
//import 'package:pizzahut/modules/homepage/screens/gets_started/gets_started_screen.dart';
//import 'package:pizzahut/modules/homepage/screens/splash/splash_screen.dart';

import '../login_screen.dart';
import 'background.dart';
import 'forgot_password_check.dart';

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
        //padding: new EdgeInsets.all(33.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.28),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SignInButtonRed(
                    text: "Sign In",
                    press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    }
                ),
                SizedBox(width: size.width * 0.01),
                SignUpButtonWhite(
                    text: "Sign Up",
                    press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterScreen();
                          },
                        ),
                      );
                    }
                ),
                SizedBox(width: size.width * 0.01),
              ],
            ),
            SizedBox(height: size.height * 0.1),
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
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0,bottom: 0,left: 200,top: 0), // give some padding
                    child: Column(
                      children: [
                        ForgotPasswordCheck(
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),
             Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25),

            ),
            SizedBox(height: size.height * 0.02),
            RoundedButtonWhite(
              text: "Sign in with Google",
              press: () {},
            ),
            SizedBox(height: size.height * 0.05),
          ],
        ),
      ),
    );
  }
}