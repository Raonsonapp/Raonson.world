import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chat")),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(),
            title: Text("Salom! Chi xabar dari?"),
          ),
        ],
      ),
    );
  }
}
