import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/HomeScreen.dart';
import 'package:login_signup_flow_app/screens/Store.dart';
import 'package:login_signup_flow_app/screens/ProfileScreen.dart';


class Customized_BottomNavBar extends StatefulWidget {
  final int val;
  const Customized_BottomNavBar({super.key, required this.val});


  @override
  State<Customized_BottomNavBar> createState() => _Customized_BottomNavBarState();
}

class _Customized_BottomNavBarState extends State<Customized_BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    int selectedItem = widget.val;
    return BottomNavigationBar(
      selectedItemColor: Colors.deepOrange,
      currentIndex: selectedItem,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),label: 'Home', ),
        BottomNavigationBarItem(
            icon: Icon(Icons.store), label: 'Shop'),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: 'Cart'),

      ],
      onTap: (value) => setState(() {
        selectedItem = value;
        if(value == 0){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen() ,));
        }
        else if (value == 1)
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Shop(),));
        else if (value == 2)
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
      //   else
      //    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Cart(),));
      }),
    );
  }
}



