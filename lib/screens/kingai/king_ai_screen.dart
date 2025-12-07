import 'package:flutter/material.dart';

class KingAIScreen extends StatefulWidget {
  @override
  State<KingAIScreen> createState() => _KingAIScreenState();
}

class _KingAIScreenState extends State<KingAIScreen> {
  TextEditingController prompt = TextEditingController();
  String output = "";

  void generate() async {
    setState(() {
      output = "Generating...";
    });

    await Future.delayed(Duration(seconds: 2)); // Аслан API мегузорем

    setState(() {
      output = "KING AI: Your video/image/app has been generated!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("KING AI Builder")),
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              TextField(
                controller: prompt,
                decoration: InputDecoration(
                    label: Text("Enter your idea..."),
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: generate, child: Text("Generate")),
              SizedBox(height: 20),
              Text(output,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
            ],
          ),
        ));
  }
}
