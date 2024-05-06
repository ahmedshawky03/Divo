import 'package:flutter/material.dart';

class SettingsCell extends StatelessWidget{
  String cellName;
  String iconName;
  VoidCallback? onTap;

  SettingsCell({
    required this.cellName,
    required this.iconName,
    this.onTap,
  });

  Widget build(BuildContext context) {
    IconData iconData = _getIconData(iconName);

    return ListTile(
      onTap: onTap,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(iconData,color: Colors.deepOrange,size: 28,),
              SizedBox(width: 10.0),
              Text(cellName, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          Icon(Icons.chevron_right,color: Colors.deepOrange,size: 28,),
        ],
      ),
    );
  }
// you should add the name of the Icons here to convert them from the string to an active char
  IconData _getIconData(String name) {
    switch (name) {
      case "account_circle":
        return Icons.account_circle;
      case "notifications":
        return Icons.notifications;
      case "security":

        return Icons.lock;
      case "info":
        return Icons.info;
      case "help":
        return Icons.help;
      case "logout":
        return Icons.exit_to_app;
      default:
        return Icons.error;
    }
  }

}