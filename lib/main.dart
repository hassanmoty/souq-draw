// lib/main.dart
// هذا الملف يحتوي على نقطة البداية لتطبيق سوق دراو

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(SouqDrawApp());
}

class SouqDrawApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'سوق دراو',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
