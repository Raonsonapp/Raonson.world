import 'package:flutter/material.dart';
import '../widgets/story_bubble.dart';
import '../widgets/post_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SizedBox(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                StoryBubble(image: "https://picsum.photos/200", onTap: null),
                StoryBubble(image: "https://picsum.photos/201", onTap: null),
                StoryBubble(image: "https://picsum.photos/202", onTap: null),
              ],
            ),
          ),
          const PostItem(
            username: "raonson",
            avatar: "https://picsum.photos/300",
            verified: true,
            image: "https://picsum.photos/500",
          ),
          const PostItem(
            username: "user123",
            avatar: "https://picsum.photos/301",
            verified: false,
            image: "https://picsum.photos/501",
          ),
        ],
      ),
    );
  }
}
