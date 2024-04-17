import 'package:login_signup_flow_app/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/signup_page.dart';
import 'package:login_signup_flow_app/screens/forgot_password_screen.dart';
import 'package:login_signup_flow_app/MyPasswordField.dart';
import 'package:login_signup_flow_app/screens/create_password_screen.dart';

class logIn extends StatefulWidget {
  const logIn({super.key});

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  var formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

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
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                'assets/DIVO_logo_transparent.png',
                                width: screenWidth * 0.33,
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
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.15,
                        ),
                        Form(
                          key: formKey,
                          child: Column(
                            //Column B
                            children: [
                              MyCustomTextFormField(
                                myIcondata: Icons.mail,
                                myHintText: 'username or phone number',
                                myValidatorHint: 'Please enter valid email!',
                                flag: false,
                                mykeyboardType: TextInputType.emailAddress,
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              MyPasswordField(flag: true, myHintText: 'Password', myValidatorHint: 'Please enter valid password!'),

                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,

                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const ForgotPasswordScreen()));
                              },
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: Color(0xFFD85024),
                                  fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // child: Text(
                        //   'Forget password?',
                        //   style: TextStyle(
                        //       color: Color(0xFFD85024),
                        //       fontWeight: FontWeight.bold,
                        //       decoration: TextDecoration.underline),
                        // )),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        myDefualtFieldBotton(
                            myPress: () {
                              if (formKey.currentState!.validate()) {
                                print('Validated');
                              }
                            },
                            myData: 'Log in'),
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
                            '  Don\'t have an account?',
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
                                      builder: (context) => SignUp(),
                                    ));
                              },
                              myData: 'Sign up',
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
