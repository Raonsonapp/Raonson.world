import 'package:flutter/material.dart';

class ChatGPTScreen extends StatefulWidget {
  @override
  _ChatGPTScreenState createState() => _ChatGPTScreenState();
}

class _ChatGPTScreenState extends State<ChatGPTScreen> {
  final TextEditingController _c = TextEditingController();
  List<String> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ChatGPT 5")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (c, i) => ListTile(title: Text(messages[i])),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(controller: _c),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  setState(() => messages.add(_c.text));
                  _c.clear();
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
