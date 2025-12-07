import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'screens/auth/login_screen.dart';

class AppRoutes {
  static final routes = {
    "/": (c) => LoginScreen(),
    "/home": (c) => HomeScreen(),
  };
}
