import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_signup_flow_app/screens/ItemCard.dart';
import 'package:login_signup_flow_app/screens/Item.dart';
import 'package:login_signup_flow_app/screens/textField.dart';
import 'package:login_signup_flow_app/screens/Widget_Methods/ButtomNavBar.dart';

class StoreCategory extends StatefulWidget {
  const StoreCategory({super.key, required this.title});

  final String title;

  @override
  State<StoreCategory> createState() => _StoreCategoryState();
}

class _StoreCategoryState extends State<StoreCategory> {
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
  var size, height, width, iconSize;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    iconSize = (height / width * 90);

    return Scaffold(
      appBar: myAppBarz(data: widget.title),
      bottomNavigationBar: Customized_BottomNavBar(
        val: 0,
      ),
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(217, 217, 217, 1)),
        child: ListView(
          padding: const EdgeInsets.all(3.0),
          children: items.map((e) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: width,
                height: height / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ItemCard(item: e),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
