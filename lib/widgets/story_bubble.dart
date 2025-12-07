import 'package:flutter/material.dart';

class StoryBubble extends StatelessWidget {
  final String image;
  final VoidCallback onTap;

  const StoryBubble({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 33,
            backgroundColor: Colors.redAccent,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(image),
            ),
          )
        ],
      ),
    );
  }
}
