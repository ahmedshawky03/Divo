import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:login_signup_flow_app/screens/loginpage.dart';

import 'package:login_signup_flow_app/customtextfield.dart';
import 'package:login_signup_flow_app/screens/create_password_screen.dart';

var formKey = GlobalKey<FormState>();
class Verification extends StatelessWidget {

  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    PinTheme defaultTheme = PinTheme(
      height: 50,
      width: 40,

      textStyle: const TextStyle(
        fontSize: 25,
      ),
      decoration: BoxDecoration(

        color: const Color(0xFFD9D9D9),
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    PinTheme focusedTheme = PinTheme(
      height: 50,
      width: 40,
      textStyle: const TextStyle(
        fontSize: 25,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.deepOrange,

        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );

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
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: ClampingScrollPhysics(),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                'assets/verify.png',
                                width: screenWidth * 0.4,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Verify that`s you 👀',
                                  style: TextStyle(
                                    fontFamily: 'inter',
                                    fontSize: 24,
                                    shadows: <Shadow>[
                                      Shadow(
                                        blurRadius: 1.5,
                                        color: Colors.black,
                                      ),
                                    ],
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),

                                Center(
                                  child: Text(
                                    'We have sent a OTP code to your email \n Please check your email now!',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            SizedBox( height: screenHeight * 0.08,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'OTP Verification code',
                                  style: TextStyle(
                                    fontFamily: 'inter',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    'Enter the verification code we just \n sent on your email address',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox( height: screenHeight * 0.025,),
                            Form(
                              key: formKey,
                              child: Column(
                                //Column B
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Pinput(
                                          length: 6,

                                          defaultPinTheme: defaultTheme,
                                          focusedPinTheme: focusedTheme,
                                          submittedPinTheme: focusedTheme,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox( height: screenHeight * 0.05,),
                                  myDefualtFieldBotton(
                                    myPress: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => CreatePasswordScreen(),
                                          ));
                                    },
                                    myData: 'Verify',
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 1,
                            color: Colors.grey[300],
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' ',

                              ),
                              Container(
                                width: 180,
                                height: 34,
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(39)),
                                child: myDefualtFieldBottonArrow(
                                  myPress: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => logIn(),
                                        ));
                                  },
                                  myData: 'Back to Login',
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),

    );
  }
}
