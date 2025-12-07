import 'package:flutter/material.dart';
import '../reels/reels_screen.dart';
import '../chat/chat_gpt_screen.dart';
import '../chat/king_ai_screen.dart';
import '../profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  final screens = [
    ReelsScreen(),
    ChatGPTScreen(),
    KingAIScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "ChatGPT"),
          BottomNavigationBarItem(icon: Icon(Icons.bolt), label: "KING AI"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
