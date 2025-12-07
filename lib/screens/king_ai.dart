import 'package:flutter/material.dart';

class KingAIScreen extends StatelessWidget {
  const KingAIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "KING AI — Media & App Generator",
          style: TextStyle(color: Colors.greenAccent, fontSize: 20),
        ),
      ),
    );
  }
}
