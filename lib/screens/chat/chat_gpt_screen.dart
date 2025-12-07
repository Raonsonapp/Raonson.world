import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatGPTScreen extends StatefulWidget {
  @override
  State<ChatGPTScreen> createState() => _ChatGPTScreenState();
}

class _ChatGPTScreenState extends State<ChatGPTScreen> {
  TextEditingController message = TextEditingController();
  List<Map<String, String>> chat = [];

  Future<void> sendMessage() async {
    final userMsg = message.text.trim();
    if (userMsg.isEmpty) return;

    setState(() {
      chat.add({"role": "user", "text": userMsg});
    });

    message.clear();

    final response = await http.post(
      Uri.parse("https://api.openai.com/v1/chat/completions"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer YOUR_OPENAI_KEY"
      },
      body: jsonEncode({
        "model": "gpt-4o-mini",
        "messages": [
          {"role": "user", "content": userMsg}
        ]
      }),
    );

    final data = jsonDecode(response.body);

    setState(() {
      chat.add({"role": "ai", "text": data["choices"][0]["message"]["content"]});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ChatGPT-5")),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: chat.length,
                  itemBuilder: (context, index) {
                    var item = chat[index];
                    return Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: item["role"] == "user"
                                ? Colors.blue[200]
                                : Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(item["text"]!));
                  })),
          Row(
            children: [
              Expanded(
                  child: TextField(
                controller: message,
                decoration: InputDecoration(hintText: "Message..."),
              )),
              IconButton(onPressed: sendMessage, icon: Icon(Icons.send))
            ],
          )
        ],
      ),
    );
  }
}
