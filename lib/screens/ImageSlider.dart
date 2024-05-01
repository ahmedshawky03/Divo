import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imageSlider extends StatefulWidget {

  final String imageLink;

  const imageSlider({super.key, required this.imageLink});

  @override
  State<imageSlider> createState() => _imageSliderState();
}

class _imageSliderState extends State<imageSlider> {
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: NetworkImage(widget.imageLink),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

