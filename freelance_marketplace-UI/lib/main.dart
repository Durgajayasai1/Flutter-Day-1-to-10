import 'package:flutter/material.dart';
import 'package:freelance_marketplace/base/bottom_nav.dart';
import 'package:freelance_marketplace/pages/chat_screen.dart';
import 'package:freelance_marketplace/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Freelance Marketplace',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
        useMaterial3: true,
      ),
      home: const BottomNav(),
      routes: {
        '/profile': (context) => const Profile(),
        '/chat_screen': (context) => const ChatScreen(),
      },
    );
  }
}
