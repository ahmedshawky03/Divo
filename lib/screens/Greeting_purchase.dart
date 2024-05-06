import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/HomeScreen.dart';
import 'package:login_signup_flow_app/screens/Store.dart';
import '';
import '../customtextfield.dart';

class GreetingPurchase extends StatefulWidget {
  const GreetingPurchase({super.key});

  @override
  State<GreetingPurchase> createState() => _GreetingPurchaseState();
}

class _GreetingPurchaseState extends State<GreetingPurchase> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(),

        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Thank you for your purchase. Your product is on its way and will be delivered to you shortly.',
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
                              color: Colors.black),
                        textAlign: TextAlign.center,

                      ),

                    ),
                    SizedBox(height: 10,),
                    Center(child: Text('We wish you a happy ',style: TextStyle(
                        fontFamily: 'inter',
                        fontSize: 30,
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 6.0,
                            color: Colors.deepOrange,
                          ),
                        ],
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange[800]))),
                    Center(child: Text('shopping with',style: TextStyle(
                        fontFamily: 'inter',
                        fontSize: 30,
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 6.0,
                            color: Colors.deepOrange,
                          ),
                        ],
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange[800]))),
                    Center(child: Text('DIVO!',style: TextStyle(
                        fontFamily: 'inter',
                        fontSize: 35,
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 6.0,
                            color: Colors.deepOrange,
                          ),
                        ],
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange[800]))),
                    SizedBox(height: 34 ,),
                    Image.asset(
                      'assets/DIVO_logo_transparent.png',
                      width: screenWidth * 0.33,
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: myDefualtFieldBotton(myPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const HomeScreen()));
                    },myData: 'Home Page',)),
                    SizedBox(width: 5,),
                    Expanded(child: myDefualtFieldBotton(myPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const Shop()));
                    },myData: 'Buy more',)),
                  ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}