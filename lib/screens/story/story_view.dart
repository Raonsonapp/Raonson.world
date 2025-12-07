import 'package:flutter/material.dart';

class StoryViewScreen extends StatelessWidget {
  final String imageUrl;

  const StoryViewScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Center(
          child: Image.network(imageUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
