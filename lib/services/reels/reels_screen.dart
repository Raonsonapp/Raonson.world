import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.black,
            child: Center(
              child: Text(
                "Reel Video $index",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          );
        },
      ),
    );
  }
}
