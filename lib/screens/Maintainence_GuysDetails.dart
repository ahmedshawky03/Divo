import 'package:login_signup_flow_app/screens/HomeScreen.dart';
import 'package:login_signup_flow_app/screens/Models/RepairMen.dart';
import 'package:flutter/material.dart';
class RepairGuyDetails extends StatelessWidget {
    late RepairGuys Guy;  // Passing parameters
    RepairGuyDetails(this.Guy, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
          },
          icon: const Icon(Icons.arrow_back,color:Colors.black,size: 30.0,),

        ),
        title:  Text('Repair Men Details!',style: TextStyle(color: Colors.grey[700],fontSize: 18.0),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  image:const DecorationImage(
                    image: AssetImage('assets/blurred_img.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(Guy.AvatarUrlPhoto),
                        radius: 60,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Person Description
                        Text(
                          Guy.Shop_name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                        // First Row
                        Row(
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
                        Row(
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
                        Row(
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



          ],
      ),

    );
  }
}
