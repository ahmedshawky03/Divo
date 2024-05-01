import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/Widget_Methods/ButtomNavBar.dart';
import 'package:login_signup_flow_app/screens/Widget_Methods/Widgetappbar.dart';

import 'HomeScreen.dart';
import 'Widget_Methods/ProfileMenuController.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var IsDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: (){
      //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
      //     },
      //     icon: const Icon(Icons.chevron_left ,size: 40.0,),
      //
      //   ),
      //   title: const Text('Profile',style: TextStyle(color:Colors.black87,fontSize: 24.0),),
      //   centerTitle: true,
      // ),
      appBar: MyAppBar(),
      bottomNavigationBar:  Customized_BottomNavBar(val: 2,),
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
                  onpress: (){},
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

