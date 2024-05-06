import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/Greeting_purchase.dart';
import 'package:login_signup_flow_app/screens/Item.dart';
import 'package:login_signup_flow_app/screens/ItemCard.dart';
import 'package:pinput/pinput.dart';
import 'package:login_signup_flow_app/screens/Widget_Methods/ButtomNavBar.dart';
import 'package:login_signup_flow_app/screens/Widget_Methods/Widgetappbar.dart';

class CartScreen extends StatefulWidget {
  final List<Item> itemList;

  const CartScreen({super.key, required this.itemList});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var width, height, size;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;
    return Scaffold(
      appBar: MyAppBar(),

      bottomNavigationBar: Customized_BottomNavBar(
        val: 3,
      ),
      body: Container(
        decoration:
        BoxDecoration(color: Color.fromRGBO(217, 217, 217, 1)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Row(
                children: [
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      const Icon(Icons.star,
                          color: Colors.yellow, size: 20.0),
                      const SizedBox(width: 2.0),
                      Text("ITEMS",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text("(${widget.itemList.length})",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            LimitedBox(
              maxHeight: height / 2,
              child: ListView(
                padding: const EdgeInsets.all(3.0),
                children: widget.itemList.map((e){
                  return ItemCard(item: e);
                }).toList(),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal:',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('USD:420',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text('Shipping Fee:',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('FREE',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                      ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text('Discount:',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('5%',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)),
                      ],),
                  ),
                  Padding(padding: EdgeInsets.all(8),
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: Colors.orange[50],borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('Hurray ! You got a dicount!',style: TextStyle(color: Colors.deepOrange),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Container(color: Colors.black38,
                      width: double.infinity,
                      height: 1,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('USD:400',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

                ]),
              ),
            ),
            Container(

              child:  Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const GreetingPurchase()));
                  },
                  child: Container(
                    width: screenWidth,
                    height: screenHeight / 13,
                    decoration: BoxDecoration(
                        color: Color(0xffff8a00),
                        borderRadius: BorderRadius.circular(8)),
                    //add to cart
                    child: Center(
                        child: Text(
                          'CHECKOUT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
