import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/Widget_Methods/ButtomNavBar.dart';


class monitors_Page extends StatefulWidget {
  const monitors_Page({Key? key});

  @override
  State<monitors_Page> createState() => _monitors_PageState();
}

class _monitors_PageState extends State<monitors_Page> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Monitor',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
        ],
      ),
      bottomNavigationBar: Customized_BottomNavBar(val: 1),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            children: [
              Stack(
                children: [
                  Image(
                    height: Size.height / 3.3,
                    image: AssetImage('assets/my_monitor.png'),
                    //fit: BoxFit.cover, // Adjust the fit as needed
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight, // Align to bottom right
                      child: Container(
                        width: Size.width / 7.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(.3),
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4))
                            ],
                            color: Colors.white),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            // Add some spacing between icon and text
                            Text('4.93')
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Size.height * 0.025,
              ),
              Text(
                'RGB monitor 144 Hz with HD quality screen and edgy stuff',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffff8a00),
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Best selling'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffff8a00),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Monitors'),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffff8a00),
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Budget Friendly'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'USD :',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: (40 / Size.width) * 100),
                  Text('420',
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(width: (40 / Size.width) * 100),
                  Text('6969',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                          decoration: TextDecoration.lineThrough)),
                  SizedBox(width: (40 / Size.width) * 100),
                  Text(
                    '69% OFF',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF05FF00)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            child: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: Size.height * 0.0625,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xFF05FF00))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pay 6 monthly Payment of 70 USD',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'YoMama',
                            style: TextStyle(
                                color: Color(0xFF05FF00),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: Size.height * 0.0625,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Monthly payments form 10 USD on checkout',
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Size.height * 0.013,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: Size.height * 0.0625,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'This item cannot be exchanged or return',
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(Icons.block)
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              //general
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  //QTY box
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'QTY',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Text('1', style: TextStyle(fontSize: 16))
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    // onTap: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) =>
                    //           const ForgotPasswordScreen()));
                    // },
                    child: Container(
                      width: Size.width * .81,
                      height: Size.height / 13,
                      decoration: BoxDecoration(
                          color: Color(0xffff8a00),
                          borderRadius: BorderRadius.circular(8)),
                      //add to cart
                      child: Center(
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
