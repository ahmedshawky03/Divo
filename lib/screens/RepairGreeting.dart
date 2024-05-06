import 'package:flutter/material.dart';

class Repairgreeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Thank you for being there',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'for dealing with us, and',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'God willing, the',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'maintenance engineer',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'will reach you within two',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'days',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'We wish you a happy',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'shopping with',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'DIVO',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'DIVO',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigate to home page
              },
              child: Text('To Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}