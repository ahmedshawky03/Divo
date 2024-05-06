import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_signup_flow_app/screens/Item.dart';
import 'dart:ui';




class ItemCardCheckout extends StatefulWidget {
  final Item item;

  const ItemCardCheckout({super.key, required this.item});

  @override
  State<ItemCardCheckout> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCardCheckout> {
  var width, height, size, fixedSize, originalPrice, offerP;
  var priceStuff, listDescription;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    fixedSize = 120.0;
    originalPrice = widget.item.price;
    offerP = widget.item.offerPercentage;
    priceStuff = [
      Wrap(
        direction: Axis.horizontal,
        children: [
          Text("USD: " + ((originalPrice * offerP).ceil()).toString() + " ",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500)),
          Text((originalPrice).toString(),
              style: const TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500)),
          Text(" " + (offerP * 100).toString() + "% OFF",
              style: const TextStyle(
                  color: Colors.green,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500))
        ],
      )
    ];
    listDescription = widget.item.description.map((e) {
      return Wrap(
        direction: Axis.horizontal,
        children: [
          Text("\u2022 " + e,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500)),
        ],
      );
    }).toList();
    return GestureDetector(
      // onTap: (){
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => RepairGuyDetails(Guy)));
      // },
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      height: fixedSize,
                      width: fixedSize,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(widget.item.imagePicture),
                              fit: BoxFit.scaleDown)),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {


                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://th.bing.com/th/id/OIP.P_4JY_1Zp6ZDBuafd35NSAHaHa?w=180&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                                  fit: BoxFit.scaleDown),
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.4),
                                  offset: const Offset(
                                    0.0,
                                    0.0,
                                  ),
                                  blurRadius: 5.8,
                                  spreadRadius: 1.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(width: 30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Person Description
                      const SizedBox(height: 20.0),
                      Text(
                        widget.item.itemName,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      // First Row
                      Wrap(
                        direction: Axis.horizontal,
                        children: [
                          const Icon(Icons.star,
                              color: Colors.yellow, size: 17.0),
                          const SizedBox(width: 2.0),
                          Text(widget.item.rating.toString(),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      const SizedBox(height: 6.0,),



                      ...listDescription,
                      const SizedBox(height: 6.0),
                      ...priceStuff
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}