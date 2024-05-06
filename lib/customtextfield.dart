import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomTextFormField extends StatefulWidget {
  final IconData myIcondata;
  final String myHintText;
  final String myValidatorHint;
  final bool flag;
  final TextInputType? mykeyboardType; // Define keyboardType as optional

  const MyCustomTextFormField(
      {Key? key,
      required this.flag,
      required this.myIcondata,
      required this.myHintText,
      required this.myValidatorHint,
      this.mykeyboardType})
      : super(key: key);

  @override
  State<MyCustomTextFormField> createState() => _MyCustomTextFormFieldState();
}

class _MyCustomTextFormFieldState extends State<MyCustomTextFormField> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
      child: TextFormField(
        keyboardType: widget.mykeyboardType,
        obscureText: widget.flag,
        validator: (value) {
          if (value!.isEmpty) {
            return widget.myValidatorHint;
          }
        },
        focusNode: _focusNode,
        decoration: InputDecoration(
          hintText: widget.myHintText,
          contentPadding: EdgeInsets.only(left: 15, right: 15),
          suffixIcon: IconTheme(
            data: IconThemeData(
              color: _isFocused ? Colors.deepOrange : Colors.grey[600],
            ),
            child: Icon(
              widget.myIcondata,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: _isFocused ? Colors.deepOrange : Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: _isFocused ? Colors.deepOrange : Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.deepOrange),
          ),
        ),
      ),
    );
  }
}

Widget myDefualtFieldBotton({
  double myWidth = 162,
  double myHeight = 37,
  String myData = 'HIHI',
  required Function? myPress(),
}) {
  return Container(
    width: myWidth,
    height: myHeight,
    decoration: BoxDecoration(
        color: Colors.deepOrange, borderRadius: BorderRadius.circular(39)),
    child: MaterialButton(
      onPressed: myPress,
      child: Text(
        myData,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  );
}

Widget myDefualtFieldBottonArrow({
  double myWidth = 162,
  double myHeight = 37,
  String myData = 'HIHI',
  required Function? myPress(),
}) {
  return Container(
    width: myWidth,
    height: myHeight,
    decoration: BoxDecoration(
        color: Colors.deepOrange, borderRadius: BorderRadius.circular(39)),
    child: MaterialButton(
      onPressed: myPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            myData,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Icon(Icons.keyboard_arrow_right_rounded),
        ],
      ),
    ),
  );
}

Widget SignOutBotton({
  double myWidth = 162,
  double myHeight = 37,
  String myData = 'HIHI',
  required Function? myPress(),
}) {
  return Container(
    width: myWidth,
    height: myHeight,
    decoration: BoxDecoration(
        color: Colors.deepOrange, borderRadius: BorderRadius.circular(39)),
    child: MaterialButton(
      onPressed: myPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            myData,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Icon(Icons.exit_to_app),
        ],
      ),
    ),
  );
}
