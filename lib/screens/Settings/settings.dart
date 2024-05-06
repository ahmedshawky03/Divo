import 'package:flutter/material.dart';
import 'package:login_signup_flow_app/screens/About Us.dart';
import 'package:login_signup_flow_app/screens/ProfileScreen.dart';
import 'package:login_signup_flow_app/screens/Settings/settings_cells.dart';
import 'package:url_launcher/link.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});
  @override
  State<Settings> createState() => _SettingsState();
}
class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title:
        Text('     Settings',
          style: TextStyle(color: Colors.deepOrange),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        color: Color.fromRGBO(211, 211, 211, 0.5),
        child: ListView(
          children: [
            SettingsCell(  // lead to profile editiong
              cellName: "General",
              iconName: "account_circle",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ));
              },
            ),


            Link(
              target: LinkTarget.self,
              uri: Uri.parse(
                  'https://support.google.com/'),
              builder: (context, followLink) =>
                  SettingsCell(
                    cellName: "Help & Support",
                    iconName: "help",
                    onTap: followLink,
                  ),
            ),

            SettingsCell(
              cellName: "About Us",
              iconName: "info",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutUsPage(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
