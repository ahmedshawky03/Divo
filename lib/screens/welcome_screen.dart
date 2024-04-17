import 'package:flutter/material.dart';


import 'package:login_signup_flow_app/customtextfield.dart';
import 'package:login_signup_flow_app/screens/loginpage.dart';
import 'package:login_signup_flow_app/screens/signup_page.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: screenHeight * 0.05,

            ),
            Image.asset(
              "assets/DIVO_logo_transparent.png",
              fit: BoxFit.cover,
              scale: 5,

            ),
            const Spacer(),
            const Spacer(),
            Container(
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome to ',
                        style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 30,
                            shadows: <Shadow>[
                              Shadow(
                                blurRadius: 3.0,
                                color:  Colors.black,
                              ),
                            ],
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                      Text('DIVO!',
                          style: TextStyle(
                              fontFamily: 'inter',
                              fontSize: 30,
                              shadows: <Shadow>[
                                Shadow(
                                  blurRadius: 6.0,
                                  color: Colors.deepOrange,
                                ),
                              ],
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange[800]))
                    ],
                  ),
                  Text(
                      'to repair your device safely',
                      style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ],
              ),
            ),
             SizedBox(height: screenHeight * 0.05),
            //login button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: const Color(0xFF1E232C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const logIn()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //register button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.deepOrange,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Continue as a guest",
                style: TextStyle(
                  color: Colors.deepOrange,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
