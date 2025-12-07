import 'package:flutter/material.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              color: Colors.black,
              child: Center(
                child: Text(
                  "Reel Video $index",
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 100,
              child: Column(
                children: const [
                  Icon(Icons.favorite, color: Colors.white, size: 32),
                  SizedBox(height: 12),
                  Icon(Icons.comment, color: Colors.white, size: 32),
                  SizedBox(height: 12),
                  Icon(Icons.share, color: Colors.white, size: 32),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
