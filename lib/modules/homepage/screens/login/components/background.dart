import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/forgot_password_check.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/signin_button_red.dart';
import 'package:pizzahut/modules/homepage/screens/login/components/signup_button_white.dart';

import '../login_screen.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      decoration: new BoxDecoration(
          color: Color.fromARGB(20, 209, 207, 207)
      ),
      //This is added for handle the background items
      child: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top:180,
              right: 95,
                child: SignInButtonRed(
                  text: 'Sign in',
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
                )
            ),
            Positioned(
                top:180,
                right: 5,
                child: SignUpButtonRed(
                  text: 'Sign Up',
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
                )
            ),
            Positioned(
              left: 0,
              child: Image.asset(
                "assets/images/login_page/pizza_login_page.png",
                width: size.width * 1,
              ),
            ),
            Positioned(
              left: 0,
              child: Image.asset(
                "assets/images/login_page/ingrediants_login_page.png",
                width: size.width * 1,
              ),
            ),
            Positioned(
              left: 0,
              child: Image.asset(
                "assets/images/login_page/login_top_design.png",
                width: size.width * 1,
              ),
            ),
            Positioned(
              bottom: 0.3,
              left: 20,
              child: Image.asset(
                "assets/images/login_page/login_bottom_design.jpg",
                width: size.width * 1,
              ),
            ),
            Positioned(
                bottom:152,
                right: 50,
                child: ForgotPasswordCheck(
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
                )
            ),
            child,
          ],
        ),
      ),
    );
  }
}
