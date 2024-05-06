import 'package:login_signup_flow_app/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/GreetingService.dart';
import 'package:login_signup_flow_app/screens/Widget_Methods/ButtomNavBar.dart';
import 'package:login_signup_flow_app/screens/Widget_Methods/Widgetappbar.dart';
import 'package:login_signup_flow_app/screens/signup_page.dart';
import 'package:login_signup_flow_app/screens/forgot_password_screen.dart';
import 'package:login_signup_flow_app/MyPasswordField.dart';
import 'package:login_signup_flow_app/screens/HomeScreen.dart';
import 'package:login_signup_flow_app/screens/create_password_screen.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  var formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: MyAppBar(),
      bottomNavigationBar: Customized_BottomNavBar(val: 1,),
      body: SafeArea(
        child: Center(
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
                              'assets/Services.png',
                              width: screenWidth * 0.5,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Services',
                                  style: TextStyle(
                                      fontFamily: 'inter',
                                      fontSize: 30,
                                      shadows: <Shadow>[
                                        Shadow(
                                          blurRadius: 4.0,
                                          color: Colors.black,
                                        ),
                                      ],
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.08,
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            MyCustomTextFormField(
                              myIcondata: Icons.computer,
                              myHintText: 'Device Name or Model',
                              myValidatorHint: 'Please enter device name or model!',
                              flag: false,
                              mykeyboardType: TextInputType.text,
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            MyCustomTextFormField(
                              myIcondata: Icons.bug_report_outlined,
                              myHintText: 'Describe your issue',
                              myValidatorHint: 'Please describe your issue!',
                              flag: false,
                              mykeyboardType: TextInputType.text,
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            MyCustomTextFormField(
                              myIcondata: Icons.computer,
                              myHintText: 'Add Location',
                              myValidatorHint: 'Please enter your location!',
                              flag: false,
                              mykeyboardType: TextInputType.text,
                            ),
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
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            child: const Text(
                              "use google maps?",
                              style: TextStyle(
                                color: Color(0xFFD85024),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
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
                                builder: (context) => GreetingService(title: 'Kimo store',),
                              ),
                            );
                          }
                        },
                        myData: 'Submit',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
