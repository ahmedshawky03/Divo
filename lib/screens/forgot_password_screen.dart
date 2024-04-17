import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/login_screen.dart';
import 'package:login_signup_flow_app/screens/otp_screen.dart';
import 'package:login_signup_flow_app/screens/loginpage.dart';
import 'package:login_signup_flow_app/screens/signup_page.dart';
import 'package:login_signup_flow_app/customtextfield.dart';
import 'package:login_signup_flow_app/screens/Verification.dart';
var formKey = GlobalKey<FormState>();
class ForgotPasswordScreen extends StatelessWidget {

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
                                'assets/ForgetPassword.png',
                                width: screenWidth * 0.4,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Trouble logging in ?',
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
                                    'Enter your email or phone and we’ll \n send you a link to get back into your account ',
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
                            SizedBox(
                              height: screenHeight * 0.1,
                            ),
                            Form(
                              key: formKey,
                              child: Column(
                                //Column B
                                children: [
                                  MyCustomTextFormField(
                                    myIcondata: Icons.mail,
                                    myHintText: 'username or phone number',
                                    myValidatorHint: 'dont forget your email',
                                    flag: false,
                                    mykeyboardType: TextInputType.emailAddress,
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.05,
                                  ),

                                  myDefualtFieldBotton(

                                    myPress: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Verification(),
                                          ));
                                    },
                                    myData: 'Back to Login',
                                  ),

                                SizedBox(
                                height: screenHeight * 0.01,
                              ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const ForgotPasswordScreen()));
                                      },
                                      child: Text(
                                        "Can`t reset your password?",
                                        style: TextStyle(
                                          color: Color(0xFFD85024),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,

                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          color: Colors.grey[300],
                                          height: 1,
                                          width: double.infinity,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'or',
                                          style: TextStyle(
                                              color: Colors.grey[700], fontSize: 18),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          color: Colors.grey[300],
                                          height: 1,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  myDefualtFieldBotton(
                                      myWidth: 220,
                                      myHeight: 30,
                                      myPress: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => SignUp(),
                                            ));

                                      },
                                      myData: 'Create new account'),
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
