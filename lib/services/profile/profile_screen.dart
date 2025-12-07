import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final bool verified;

  ProfileScreen({this.verified = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Профил")),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(radius: 40),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("User"),
                if (verified)
                  Icon(Icons.verified, color: Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
