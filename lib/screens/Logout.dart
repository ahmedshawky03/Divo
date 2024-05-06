// import 'package:flutter/material.dart';
// import 'package:login_signup_flow_app/screens/loginpage.dart';
//
// class SignOutDialog extends StatefulWidget {
//   @override
//   _SignOutDialogState createState() => _SignOutDialogState();
// }
//
// class _SignOutDialogState extends State<SignOutDialog> {
//   static void show(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           height: 200,
//           padding: EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Sign Out',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Are you sure you want to sign out?',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 32),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     child: Text('No'),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => logIn(),
//                         ),
//                       );
//                     },
//                     child: Text('Yes'),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//     );
//   }
// }