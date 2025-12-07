import 'package:flutter/material.dart';
import '../../widgets/reels_item.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: const [
        ReelsItem(video: "video1.mp4", caption: "Hello!"),
        ReelsItem(video: "video2.mp4", caption: "Welcome"),
      ],
    );
  }
}
