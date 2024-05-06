
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart'as LatLng;
class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});
  @override



  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
            title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'About us',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'OpenSansBold',
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                  ),
                ])),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/black and orange.jpg'),
                  fit: BoxFit.cover)),

          child: SingleChildScrollView(

            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: const Column(
                    children: <Widget>[
                      Text(
                        'Welcome to DIVO! We are a team of passionate indviduals who specialize in providing high-quality spare parts and manufacturing innovative electronic devices. Our mission is to provide our customers with the products they need to keep their machines running smoothly and to push the bouundaries of whats possible in the electronics industry. ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: const Column(
                    children: <Widget>[
                      Text(

                        'Team members ',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.double),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage:
                        AssetImage('Images/Screenshot (397).png'),
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        'Mohamed Asem',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage:
                        AssetImage('Images/Screenshot (401).png'),
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        'Abdelrahman',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage:
                        AssetImage('Images/Screenshot (399).png'),
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        'Mahmoud shoib',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage:
                        AssetImage('Images/Screenshot (403).png'),
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        'Omar yasser',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage:
                        AssetImage('Images/Screenshot (400).png'),
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        'Islam neymar',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage:
                        AssetImage('Images/Screenshot (398).png'),
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        'Hany moghera',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage:
                        AssetImage('Images/Screenshot (402).png'),
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        'Ahmed shawky',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ));
  }
}