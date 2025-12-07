import 'package:flutter/material.dart';

class StoryAddScreen extends StatelessWidget {
  const StoryAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Add Story", style: TextStyle(color: Colors.white)),
      ),
      body: const Center(
        child: Text(
          "Upload Story Coming Soon...",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
