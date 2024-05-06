import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/HomeScreen.dart';
import 'package:login_signup_flow_app/screens/Store.dart';
import '';
import '../customtextfield.dart';

class GreetingService extends StatefulWidget {
  const GreetingService({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<GreetingService> createState() => _GreetingServiceState();
}

class _GreetingServiceState extends State<GreetingService> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.1),
                Center(
                  child: Text(
                    'Thank you for contacting ${widget.title}. Our team will get back to you within the promised business days regarding your order.',
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
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: Text(
                    'We wish you a happy ',
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
                      color: Colors.deepOrange[800],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'shopping with',
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
                      color: Colors.deepOrange[800],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'DIVO!',
                    style: TextStyle(
                      fontFamily: 'inter',
                      fontSize: 35,
                      shadows: <Shadow>[
                        Shadow(
                          blurRadius: 6.0,
                          color: Colors.deepOrange,
                        ),
                      ],
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange[800],
                    ),
                  ),
                ),
                SizedBox(height: screenHeight*0.08),
                Image.asset(
                  'assets/DIVO_logo_transparent.png',
                  width: screenWidth * 0.33,
                ),
                SizedBox(height: screenHeight*0.1),
                Center(
                  child: Container(
                    width: 165,
                    height: 34,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(39),
                    ),
                    child: myDefualtFieldBotton(
                      myPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      myData: 'Home Page',
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
