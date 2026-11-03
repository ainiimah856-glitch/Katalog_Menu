
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'menu_page.dart';
import 'about_page.dart';
import 'contact_page.dart';

void main() {
  runApp(const PawonAinunApp());
}

class PawonAinunApp extends StatelessWidget {
  const PawonAinunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pawon Ainun',

      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5EBDD),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF795238),
        ),
      ),

      initialRoute: '/home',

      routes: {
        '/home': (context) => const HomePage(),
        '/menu': (context) => const MenuPage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}
