import 'package:login_signup_flow_app/screens/Models/RepairMen.dart';
import 'package:login_signup_flow_app/screens/Widget_Methods/SizedBoxWithHeaders.dart';
import 'package:flutter/material.dart';
import 'Maintainence_GuysDetails.dart';
import 'Widget_Methods/ButtomNavBar.dart';
import 'Widget_Methods/Header_Buttons.dart';
import 'Widget_Methods/Widgetappbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<RepairGuys> repair_guys = [
    RepairGuys("Neymar repair shop", 'Computer repair shop',
        '4.9 (1993 Ratings)', '112 NYC ST.', 'assets/Neymar.jpg'),
    RepairGuys("Ilissa repair shop", 'Computer repair shop', '4.5 (1994 Ratings)',
        '412 miami ST.', 'assets/hotgirl.jpg'),
    RepairGuys("Smith repair shop", 'Computer repair shop',
        '4.8 (1992 Ratings)', '207 Smouha ST.', 'assets/WillSmith.jpg'),
    RepairGuys("Messi's repair shop", 'Computer repair shop',
         '4.8 (1992 Ratings)', '207 Smouha ST.', 'assets/Messi.jpeg'),
    RepairGuys("Ronaldo's repair shop", 'Computer repair shop',
        '4.8 (1992 Ratings)', '207 Smouha ST.', 'assets/Ronaldo.jpeg'),

  ];
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(),
        bottomNavigationBar:  Customized_BottomNavBar(val: 0,),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
          children:[
            // const HeaderButtons(),
            const SizedBox(height:10.0),
            Headers(
                height: 30.0,
                icon: Icons.star,
                Title: 'Best ratings',
                colors: Colors.yellow  ,
            ),
            const SizedBox(height: 20.0,),
            Column(
              children:[
                Column(
                children: repair_guys.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: Size.width,
                      height: Size.height / 6,
                      child: RepairCard(e),
                    ),
                  );
                }).toList(),
     ),
                const SizedBox(height: 20.0,),
                Headers(
                  height: 50.0,
                  icon: Icons.phone_android_sharp,
                  Title: 'Budget Friendly',
                  colors: Colors.green,
                ),
      ]),
            Column(
                children:[
                  Column(
                    children: repair_guys.map((e) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: Size.width,
                          height: Size.height / 6,
                          child: RepairCard(e),
                        ),
                      );
                    }).toList(),
                  ),
                ]),
    ]));
  }

  Widget RepairCard(RepairGuys Guy) {
    return GestureDetector(
      // onTap: (){
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => RepairGuyDetails(Guy)));
      // },
      child: Card(
        child: Container(
          decoration: BoxDecoration(
          image:const DecorationImage(
          image: AssetImage('assets/blurred_img.png'),
          fit: BoxFit.cover,
                ),
            borderRadius: BorderRadius.circular(8.0),
            ),
          child: Wrap(
            direction: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15,20, 15),

                child: CircleAvatar(
                  backgroundImage: AssetImage(Guy.AvatarUrlPhoto),
                  radius: 55,
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
                    Guy.Shop_name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  // First Row
                  const SizedBox(height: 8.0),
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      const Icon(Icons.error_outline_outlined,
                          color: Colors.white, size: 20.0),
                      const SizedBox(width: 2.0),
                      Text(Guy.title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  // Second Row  Ratings
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      const Icon(Icons.star, color: Colors.yellow, size: 20.0),
                      const SizedBox(width: 2.0),
                      Text(Guy.ratings,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  // Third Row Locations
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      const Icon(Icons.location_on_sharp,
                          color: Colors.white, size: 20.0),
                      const SizedBox(width: 2.0),
                      Text(Guy.location,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontStyle: FontStyle.italic)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        ),
    );
  }
}

/*
                    child: Container(
                            decoration: BoxDecoration(
                            image:DecorationImage(
                            image: AssetImage('assets/images/background.jpeg'),
                        fit: BoxFit.cover,
                        ),
                            ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 4.5,sigmaX: 4.5),



decoration: BoxDecoration(
                  image:DecorationImage(
                    image: AssetImage('assets/images/R.jpg'),
                    fit: BoxFit.cover,
                  ),

              ),


               child: Container(
                  decoration: BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage('assets/images/background.jpeg'),
                      fit: BoxFit.cover,
                    ),

                  ),




 */
