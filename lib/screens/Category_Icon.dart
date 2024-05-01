import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CategoryIcon extends StatefulWidget {
  final String name;
  final double boxSize;
  final String imageLink;
  const CategoryIcon({super.key, required this.name, required this.boxSize, required this.imageLink});

  @override
  State<CategoryIcon> createState() => _CategoryIconState();
}

class _CategoryIconState extends State<CategoryIcon> {
  var size,height,width, fixedSize;
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    fixedSize = width / height * widget.boxSize;

    return Container(
      height: fixedSize,
      width: fixedSize,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(240, 240, 240, 1),
          borderRadius: BorderRadius.circular(13)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: CircleAvatar(
                child: ClipRect(child: SizedBox.fromSize(size: Size.fromWidth(fixedSize*0.5),child: Image.asset(widget.imageLink, fit: BoxFit.scaleDown))),
                backgroundColor: Colors.white,

              ),
            ),
          ),
          Expanded(
            child: Container(
                child: Align(
                    alignment: Alignment.center,
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(widget.name, style: TextStyle(fontWeight: FontWeight.bold),)))),
          )
        ],
      ),
    );
  }
}