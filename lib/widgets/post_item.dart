import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String username;
  final String avatar;
  final String image;

  PostItem({required this.username, required this.avatar, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(avatar)),
          title: Text(username),
          trailing: Icon(Icons.more_vert),
        ),
        Image.network(image),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            IconButton(onPressed: () {}, icon: Icon(Icons.comment_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.send)),
          ],
        )
      ],
    );
  }
}
