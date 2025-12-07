import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 40,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, i) {
          return Image.network(
            "https://picsum.photos/id/${i + 10}/300",
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
