import 'package:flutter/material.dart';
import '../../widgets/story_bubble.dart';
import '../../widgets/post_card.dart';

class HomeFeed extends StatelessWidget {
  const HomeFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Raonson"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                StoryBubble(imageUrl: "https://picsum.photos/200", username: "you"),
                StoryBubble(imageUrl: "https://picsum.photos/201", username: "amir"),
                StoryBubble(imageUrl: "https://picsum.photos/202", username: "laylo"),
              ],
            ),
          ),

          PostCard(
            username: "amir",
            imageUrl: "https://picsum.photos/600",
          ),
        ],
      ),
    );
  }
}
