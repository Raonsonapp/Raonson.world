import 'package:flutter/material.dart';

class KingAIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KING AI – App Builder")),
      body: Center(
        child: ElevatedButton(
          child: Text("Build APK"),
          onPressed: () {
            // API CALL TO BUILD SERVER
          },
        ),
      ),
    );
  }
}
