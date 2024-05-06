import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_signup_flow_app/screens/ImageSlider.dart';
import 'package:login_signup_flow_app/screens/Category_Icon.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Widget_Methods/ButtomNavBar.dart';
import 'Widget_Methods/Header_Buttons.dart';
import 'Widget_Methods/Widgetappbar.dart';
import 'package:login_signup_flow_app/screens/Monitor_Page_item.dart';
import 'package:login_signup_flow_app/screens/Store_Category.dart';
import 'package:login_signup_flow_app/customtextfield.dart';
import 'package:login_signup_flow_app/screens/loginpage.dart';
class Shop extends StatefulWidget {
  const Shop({super.key});


  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    height = size.height;
    width = size.width;
    iconSize = (height / width * 90);
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
                    width: screenWidth, // Increase the wid
                    // th of the logo
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person_pin,
                  color: Colors.deepOrange,),
                title: Text('Profile'),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => logIn(),
                        ));
                  },
                  myData: 'Sign Out',
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Customized_BottomNavBar(
        val: 2,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 3),
              child: CarouselSlider(
                items: [
                  //1st Image of Slider
                  imageSlider(
                      imageLink:
                          "https://www.nvidia.com/content/dam/en-zz/Solutions/geforce/ada/rtx-4090/geforce-ada-4090-web-og-1200x630.jpg"),
                  imageSlider(
                      imageLink:
                          "https://m.media-amazon.com/images/I/61ujd7RN-3L.jpg"),
                  imageSlider(
                      imageLink:
                          "https://www.apple.com/newsroom/images/2023/10/apple-unveils-new-macbook-pro-featuring-m3-chips/article/Apple-MacBook-Pro-2up-231030_Full-Bleed-Image.jpg.large.jpg"),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: height * 0.3,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: const Icon(
                    Icons.filter_alt_outlined,
                    size: 40,
                  ),
                ),
                Container(
                  width: width * 0.32,
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "Shop by Category",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                ),
                Opacity(
                  opacity: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Icon(
                      Icons.filter,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.count(
                    crossAxisSpacing: 13,
                    crossAxisCount: 3,
                    mainAxisSpacing: 13,
                    padding: EdgeInsets.all(8.0),
                    children: [
                      GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) =>
                          //           const ForgotPasswordScreen()));
                          // },
                          child: CategoryIcon(
                              name: "CPU",
                              boxSize: iconSize,
                              imageLink: "assets/CPU.png")),
                      GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) =>
                          //           const ForgotPasswordScreen()));
                          // },
                          child: CategoryIcon(
                              name: "GPU",
                              boxSize: iconSize,
                              imageLink: "assets/GPU.png")),
                      CategoryIcon(
                          name: "Case",
                          boxSize: iconSize,
                          imageLink: "assets/Case.png"),
                      CategoryIcon(
                          name: "Cooler",
                          boxSize: iconSize,
                          imageLink: "assets/cooler.png"),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const StoreCategory(title: 'Monitor')));
                          },
                          child: CategoryIcon(
                              name: "Monitor",
                              boxSize: iconSize,
                              imageLink: "assets/monitor.png")),
                      CategoryIcon(
                          name: "Keyboard",
                          boxSize: iconSize,
                          imageLink: "assets/keyboard.png"),
                      CategoryIcon(
                          name: "Mouse",
                          boxSize: iconSize,
                          imageLink: "assets/Mouse.png"),
                      CategoryIcon(
                          name: "RAMS",
                          boxSize: iconSize,
                          imageLink: "assets/RAM.png"),
                      CategoryIcon(
                          name: "ROMS",
                          boxSize: iconSize,
                          imageLink: "assets/ROM.png"),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
