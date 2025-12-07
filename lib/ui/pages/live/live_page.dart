import 'package:flutter/material.dart';

class LivePage extends StatelessWidget {
  const LivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: const Text(
          "Live Video (Coming Soon)",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
