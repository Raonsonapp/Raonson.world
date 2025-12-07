import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String username;
  final String imageUrl;

  const PostCard({
    super.key,
    required this.username,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
          title: Text(username),
        ),
        Image.network(imageUrl),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("❤️ 102  •  Комментария 5"),
        )
      ],
    );
  }
}
