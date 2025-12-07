import 'package:flutter/material.dart';
import '../widgets/verified_badge.dart';

class PostItem extends StatelessWidget {
  final String username;
  final String avatar;
  final bool verified;
  final String image;

  const PostItem({
    super.key,
    required this.username,
    required this.avatar,
    required this.verified,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(avatar)),
          title: Row(
            children: [
              Text(username),
              if (verified) const SizedBox(width: 5),
              if (verified) const VerifiedBadge(),
            ],
          ),
        ),
        Image.network(image),
      ],
    );
  }
}
