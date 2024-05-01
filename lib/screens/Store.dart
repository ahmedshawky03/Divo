import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_signup_flow_app/screens/ImageSlider.dart';
import 'package:login_signup_flow_app/screens/Category_Icon.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Widget_Methods/ButtomNavBar.dart';
import 'Widget_Methods/Header_Buttons.dart';
import 'Widget_Methods/Widgetappbar.dart';


void main() {
  runApp(const Shop());
}

class Shop extends StatelessWidget {
  const Shop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
        debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var size,height,width, iconSize;
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
      appBar: MyAppBar(),
      bottomNavigationBar:  Customized_BottomNavBar(val: 1,),
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
                  imageSlider(imageLink: "https://www.nvidia.com/content/dam/en-zz/Solutions/geforce/ada/rtx-4090/geforce-ada-4090-web-og-1200x630.jpg"),
                  imageSlider(imageLink: "https://m.media-amazon.com/images/I/61ujd7RN-3L.jpg"),
                  imageSlider(imageLink: "https://www.apple.com/newsroom/images/2023/10/apple-unveils-new-macbook-pro-featuring-m3-chips/article/Apple-MacBook-Pro-2up-231030_Full-Bleed-Image.jpg.large.jpg"),

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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: const Icon(Icons.filter_alt_outlined, size: 40,),
                ),
                Container(
                  width: width * 0.32,
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text("Shop by Category", style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center, )),
                ),
                Opacity(
                  opacity: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Icon(Icons.filter, size: 40,),
                  ),
                ),
              ],
            ),Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.count(crossAxisSpacing: 13,
                    crossAxisCount: 3,mainAxisSpacing: 13,
                    padding: EdgeInsets.all(8.0),
                    children: [
                      CategoryIcon(name: "CPU", boxSize: iconSize, imageLink:"assets/CPU.png" ),
                      CategoryIcon(name: "GPU", boxSize: iconSize, imageLink: "assets/GPU.png"),
                      CategoryIcon(name: "Case", boxSize: iconSize, imageLink:"assets/Case.png" ),
                      CategoryIcon(name: "Cooler", boxSize: iconSize, imageLink: "assets/cooler.png"),
                      CategoryIcon(name: "Monitor", boxSize: iconSize, imageLink: "assets/monitor.png"),
                      CategoryIcon(name: "Keyboard", boxSize: iconSize, imageLink: "assets/keyboard.png"),
                      CategoryIcon(name: "Mouse", boxSize: iconSize, imageLink: "assets/Mouse.png"),
                      CategoryIcon(name: "RAMS", boxSize: iconSize, imageLink: "assets/RAM.png" ),
                      CategoryIcon(name: "ROMS", boxSize: iconSize, imageLink: "assets/ROM.png"),
                    ]),
              ),


            ),

          ],
        ),
      ),

    );
  }
}
