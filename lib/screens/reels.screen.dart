import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Reels (Flutter Version)",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
