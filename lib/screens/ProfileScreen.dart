import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/Settings/settings.dart';
import 'package:login_signup_flow_app/screens/Widget_Methods/ButtomNavBar.dart';
import 'package:login_signup_flow_app/screens/Widget_Methods/Widgetappbar.dart';
import 'package:login_signup_flow_app/customtextfield.dart';
import 'package:login_signup_flow_app/screens/loginpage.dart';

import 'Widget_Methods/ProfileMenuController.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    var IsDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: MyAppBar(),
      drawer: Drawer(
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Theme(
                data: Theme.of(context).copyWith(
                  dividerTheme:
                  const DividerThemeData(color: Colors.transparent),
                ),
                child: DrawerHeader(
                  child: Image.asset(
                    'assets/DIVO_logo_transparent.png',
                    width: screenWidth, // Increase the width of the logo
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const ProfileScreen()));
                },
                child: ListTile(
                  leading: Icon(Icons.person_pin,
                    color: Colors.deepOrange,),
                  title: Text('Profile'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home,
                  color: Colors.deepOrange,),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.store,
                  color: Colors.deepOrange,),
                title: Text('Store'),
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart,
                  color: Colors.deepOrange,),
                title: Text('Cart'),
              ),
              ListTile(
                leading: Icon(Icons.build,
                  color: Colors.deepOrange,),
                title: Text('Repair'),
              ),
              ListTile(
                leading: Icon(Icons.help,
                  color: Colors.deepOrange,),
                title: Text('Help & Support',
                ),
              ),
              // Settings section
              ListTile(
                leading: Icon(Icons.settings,
                  color: Colors.deepOrange,
                ),
                title: Text('Settings'),
              ),
              // About section
              ListTile(
                leading: Icon(Icons.info,
                  color: Colors.deepOrange,),
                title: Text('About'),
              ),
              // Sign Out section

              Padding(
                padding: const EdgeInsets.fromLTRB(50, 40, 50, 0),
                child: SignOutBotton(
                  myPress: () {
                    logIn();
                  },
                  myData: 'Sign Out',
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar:  Customized_BottomNavBar(val: 4,),
      body: SingleChildScrollView(
        child:Container(
          padding: const EdgeInsets.all(20.0),
          // color:Colors.grey,
          child:Column(
              children: [
                const SizedBox(
                  // width:Size.width/3,
                  width: 170,
                  height: 170,
                  // height:Size.height/3,
                  child:const CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/Neymar.jpg'),

                  ),
                ),
                const SizedBox(height: 10.0,),
                const Text('Neymar Jr',style:TextStyle(color:Colors.black87,fontSize:18.0,fontWeight: FontWeight.bold)),
                Text(
                  'neymarjr@Divo.com',
                  style: TextStyle(color:Colors.grey[700],fontSize:16.0,fontStyle: FontStyle.italic,
                      letterSpacing: 0.5),),
                const SizedBox(height: 10.0,),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text('Edit Profile',style: TextStyle(color:Colors.white,fontSize:18.0,fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.deepOrange[400],
                      side: BorderSide.none,
                      shape: const StadiumBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Divider(),
                const SizedBox(height:20,),
                ProfileMenuWidget(
                  title: 'Settings',
                  icon: Icons.settings,
                  onpress: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Settings(),
                        ));
                  },
                  endIcon: false,
                  textColor: Colors.black87,
                ),
                ProfileMenuWidget(
                  title: 'Billing Details',
                  icon: Icons.payment_rounded,
                  onpress: (){},
                  endIcon: false,
                  textColor: Colors.black87,
                ),
                ProfileMenuWidget(
                  title: 'Dark Mode',
                  icon: Icons.dark_mode,
                  onpress: (){},
                  textColor: Colors.black87,
                  endIcon: false,
                ),
                ProfileMenuWidget(
                  title: 'Information',
                  icon: Icons.info_outline_rounded,
                  onpress: (){},
                  textColor: Colors.black87,
                  endIcon: false,
                ),
                ProfileMenuWidget(
                  title: 'Logout',
                  icon: Icons.logout,
                  textColor: Colors.red[800],
                  onpress: (){},
                  endIcon: false,
                ),

              ]),
        ),
      ),


    );

  }
}

