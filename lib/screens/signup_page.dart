import 'package:login_signup_flow_app/customtextfield.dart';
import 'package:login_signup_flow_app/screens/HomeScreen.dart';
import 'package:login_signup_flow_app/screens/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/MyPasswordField.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    debugShowCheckedModeBanner: false;
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
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Image.asset(
                          'assets/DIVO_logo_transparent.png',
                          width: screenWidth * 0.3,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Welcome to ',
                              style: TextStyle(
                                  fontFamily: 'inter',
                                  fontSize: 30,
                                  shadows: <Shadow>[
                                    Shadow(
                                      blurRadius: 3.0,
                                      color: Colors.black,
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
                      SizedBox(
                        height: screenHeight * 0.15,
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            MyCustomTextFormField(
                                flag: false,
                                myIcondata: CupertinoIcons.profile_circled,
                                myHintText: 'Full Name',
                                myValidatorHint: 'please add your name'),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            MyCustomTextFormField(
                                flag: false,
                                myIcondata: CupertinoIcons.mail,
                                myHintText: 'Email or phone number',
                                myValidatorHint:
                                    'please add email or phone number'),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),

                            MyPasswordField(flag: true, myHintText: 'Password', myValidatorHint: 'Please enter valid password!'),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      myDefualtFieldBotton(
                          myPress: () {
                            if (formKey.currentState!.validate()) {
                              print('Validated');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ));
                            }
                          },
                          myData: 'Sign Up'),
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
                      Column(
                        children: [
                          Container(
                            width: 200,
                            height: 34,
                            decoration: BoxDecoration(
                                color: Colors.grey[50],
                                border: Border.all(color: Colors.black26),
                                borderRadius: BorderRadius.circular(30)),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Continue with Apple'),
                                  Icon(Icons.apple)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Container(
                            width: 200,
                            height: 34,
                            decoration: BoxDecoration(
                                color: Colors.grey[50],
                                border: Border.all(color: Colors.black26),
                                borderRadius: BorderRadius.circular(30)),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Continue with Google',
                                  ),
                                  Image.asset(
                                    'assets/google.png',
                                    width: 20,
                                  )
                                ],
                              ),
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
                            '  Have an account?',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Container(
                            width: 125,
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
                              myData: 'Login',
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
