import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/HomeScreen.dart';
import 'package:login_signup_flow_app/screens/Store.dart';
import 'package:login_signup_flow_app/screens/ProfileScreen.dart';
import 'package:login_signup_flow_app/screens/cart_screen.dart';
import 'package:login_signup_flow_app/screens/ItemCard.dart';
import 'package:login_signup_flow_app/screens/Item.dart';
import 'package:login_signup_flow_app/screens/Services.dart';


class Customized_BottomNavBar extends StatefulWidget {
  final int val;
  const Customized_BottomNavBar({super.key, required this.val});


  @override
  State<Customized_BottomNavBar> createState() => _Customized_BottomNavBarState();
}

class _Customized_BottomNavBarState extends State<Customized_BottomNavBar> {
  List<Item> items = [
    Item(
        itemName: "LED good screen",
        rating: 4.9,
        description: ['112 NYC ST.', 'good durability'],
        imagePicture:
        'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6425/6425893_sd.jpg',
        price: 1200,
        offerPercentage: 0.4,
        tags: ['monitor', 'best selling']),
    Item(
        itemName: "LED good screen",
        rating: 4.9,
        description: ['112 NYC ST.', 'good durability'],
        imagePicture:
        'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6425/6425893_sd.jpg',
        price: 6969,
        offerPercentage: 0.4,
        tags: ['monitor', 'best selling']),
    Item(
        itemName: "LED good screen",
        rating: 4.9,
        description: ['112 NYC ST.', 'good durability'],
        imagePicture:
        'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6425/6425893_sd.jpg',
        price: 6969,
        offerPercentage: 0.4,
        tags: ['monitor', 'best selling']),
    Item(
        itemName: "LED good screen",
        rating: 4.9,
        description: ['112 NYC ST.', 'good durability'],
        imagePicture:
        'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6425/6425893_sd.jpg',
        price: 6969,
        offerPercentage: 0.4,
        tags: ['monitor', 'best selling']),
    Item(
        itemName: "LED good screen",
        rating: 4.9,
        description: ['112 NYC ST.', 'good durability'],
        imagePicture:
        'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6425/6425893_sd.jpg',
        price: 6969,
        offerPercentage: 0.4,
        tags: ['monitor', 'best selling']),
  ];
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
            icon: Icon(Icons.build), label: 'Services'),
        BottomNavigationBarItem(
            icon: Icon(Icons.store), label: 'Shop'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: 'Cart'),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),label: 'Profile',),
      ],
      onTap: (value) => setState(() {
        selectedItem = value;
        if(value == 0)
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen() ,));
        else if (value == 1)
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Services(),));
        else if (value == 2)
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Shop(),));
        else if (value == 3)
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CartScreen(itemList:items,),));
        else if (value == 4)
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));


      }),
    );
  }
}



