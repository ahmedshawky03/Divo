import 'package:flutter/material.dart';

class MyPasswordField extends StatefulWidget {
  final String myHintText;
  final String myValidatorHint;
  final bool flag;
  final TextInputType? mykeyboardType; // Define keyboardType as optional

  const MyPasswordField({
    Key? key,
    required this.flag,
    required this.myHintText,
    required this.myValidatorHint,
    this.mykeyboardType,
  }) : super(key: key);

  @override
  State<MyPasswordField> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
    _isObscured =
        widget.flag; // Initialize _isObscured with the initial flag value
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
        obscureText: _isObscured,
        // Use _isObscured instead of widget.flag
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
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isObscured = !_isObscured; // Toggle _isObscured when tapped
                });
              },
              child: _isObscured
                  ? Icon(
                      Icons.visibility_off,
                      color: Colors.grey,
                    )
                  : Icon(
                      Icons.visibility,
                      color: Colors.deepOrange,
                    ),
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
