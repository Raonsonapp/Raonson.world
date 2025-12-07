import 'package:flutter/material.dart';

class ReelsItem extends StatelessWidget {
  final String video;
  final String caption;

  const ReelsItem({super.key, required this.video, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.black26),
        Positioned(
          bottom: 40,
          left: 20,
          child: Text(
            caption,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        )
      ],
    );
  }
}
