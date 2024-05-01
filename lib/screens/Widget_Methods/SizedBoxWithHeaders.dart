import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  Headers({super.key,
    required this.height,
    required this.icon,
    required this.Title,
    required this.colors,
  }
);
  final double height;
  IconData icon ;
  Color colors;
  final String Title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon,size: 40.0,color:colors,),
            SizedBox(width:10.0),
            Text(Title,style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
          ],
        ),
      ),);
  }
}
