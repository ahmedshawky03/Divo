import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_signup_flow_app/screens/Models/RepairMen.dart';
import 'dart:ui';

class RepairmanCard extends StatefulWidget {
  final RepairGuys Guy;
  const RepairmanCard ({super.key, required this.Guy});

  @override
  State<RepairmanCard> createState() => _RepairmanCardState();
}

class _RepairmanCardState extends State<RepairmanCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: (){
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => RepairGuyDetails(Guy)));
      // },
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            image:const DecorationImage(
              image: NetworkImage("https://th.bing.com/th/id/OIP.vbqST3MW_T0QXCck5MbxrQHaEK?w=286&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15,20, 15),

                    child: CircleAvatar(
                      backgroundImage: AssetImage(widget.Guy.AvatarUrlPhoto),
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
                        widget.Guy.Shop_name,
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
                          Text(widget.Guy.title,
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
                          Text(widget.Guy.ratings,
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
                          Text(widget.Guy.location,
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
        ),
      ),
    );
  }
}
