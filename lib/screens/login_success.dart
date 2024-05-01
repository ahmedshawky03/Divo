import 'package:login_signup_flow_app/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/HomeScreen.dart';
import 'package:login_signup_flow_app/screens/loginpage.dart';


class LoginSuccessScreen extends StatefulWidget {
  const LoginSuccessScreen({super.key});

  @override
  State<LoginSuccessScreen> createState() => logsucc();
}

class logsucc extends State<LoginSuccessScreen> {
  var formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    debugShowCheckedModeBanner:
    false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.deepOrange,
        ),
      ),
      body: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              //Main Column
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: ClampingScrollPhysics(),
                    child: Column(
                      children: [
                        Column(
                          //Column A
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Image.asset(
                                'assets/success.png',
                                width: screenWidth * 1.1,
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.04,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    'Login Success',
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
                              ],
                            )
                          ],
                        ),

                        SizedBox(
                          height: screenHeight * 0.04,
                        ),
                        myDefualtFieldBotton(
                          myWidth: screenWidth * 0.5,
                          myPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ));
                          },
                          myData: 'Go to Home Page',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
