import 'package:flutter/material.dart';

class KingAiScreen extends StatelessWidget {
  const KingAiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final input = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("KING AI")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const Text("AI for video / image / app creation"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(controller: input),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
