import 'package:flutter/material.dart';

class StoryBubble extends StatelessWidget {
  final String imageUrl;
  final String username;

  const StoryBubble({
    super.key,
    required this.imageUrl,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.red, Colors.orange],
            ),
          ),
          child: CircleAvatar(
            radius: 32,
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          username,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
