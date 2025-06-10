import 'package:flutter/material.dart';
import 'package:sushiapp/pages/intro_pages.dart';
import 'package:sushiapp/pages/menu_pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPages(),
      routes: {
        "intropages": (context) => const IntroPages(),
        "/menupage": (context) => const MenuPages(),
      },
    );
  }
}
