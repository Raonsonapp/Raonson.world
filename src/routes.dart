import 'package:flutter/material.dart';
import 'screens/auth/login.dart';
import 'screens/home/home.dart';
import 'screens/reels/reels.dart';
import 'screens/search/search.dart';
import 'screens/profile/profile.dart';
import 'screens/ai/chat_gpt.dart';
import 'screens/ai/king_ai.dart';

final Map<String, WidgetBuilder> appRoutes = {
  "/auth": (context) => const LoginPage(),
  "/home": (context) => const HomePage(),
  "/reels": (context) => const ReelsPage(),
  "/search": (context) => const SearchPage(),
  "/profile": (context) => const ProfilePage(),
  "/chatgpt": (context) => const ChatGPTPage(),
  "/kingai": (context) => const KingAIPage(),
};
