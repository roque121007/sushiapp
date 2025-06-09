import 'package:flutter/material.dart';

class IntroPages extends StatelessWidget {
  const IntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 130, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [const SizedBox(height: 25), Text("SUSHI MAIN")],
        ),
      ),
    );
  }
}
