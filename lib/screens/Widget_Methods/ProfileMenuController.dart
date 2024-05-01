import 'package:flutter/material.dart';

class ProfileMenuWidget extends StatelessWidget {
  ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.endIcon,
    required this.onpress,
    required this.textColor
  });
  final String title;
  final IconData icon;
  final VoidCallback onpress;
  final bool endIcon;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onpress,
      leading: Container(
        width:30,height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:Colors.deepOrange.withOpacity(0.1),
        ),
        child:  Icon(icon ,color:Colors.deepOrange),
      ),
      title: Text(title,style:TextStyle(color:textColor,fontSize: 16.0)),
      trailing: Icon(Icons.keyboard_arrow_right,color:Colors.black12.withOpacity(0.5),size: 16.0,),

    );
  }
}
