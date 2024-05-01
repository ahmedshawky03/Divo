import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderButtons extends StatefulWidget {
  const HeaderButtons({super.key});

  @override
  State<HeaderButtons> createState() => _HeaderButtonsState();
}

class _HeaderButtonsState extends State<HeaderButtons> {
  bool isPressed1 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
        InkWell(
          onTap: () {
            setState(() {
              isPressed1 = !isPressed1;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: isPressed1
                  ? const Border(
                bottom: BorderSide(
                  color: Colors.deepOrange,
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
              )
                  : null,
            ),
            child: const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Repair shops',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              isPressed1 = !isPressed1;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: isPressed1
                  ? const Border(
                bottom: BorderSide(
                  color: Colors.orange,
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
              )
                  : null,
            ),
            child: const Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text(
                'PC Parts',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
