import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushiapp/components/button.dart';

class IntroPages extends StatelessWidget {
  const IntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 130, 60, 55),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            // Previene overflow
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 25),
                Text(
                  "SUSHI MAIN",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset("assets/imagenes/salmon_eggs.png"),
                ),
                const SizedBox(height: 25),
                Text(
                  "THE TASTE OF JAPANESE FOOD",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Feel the taste of the most popular japanese food from anywhere and anytime",
                  style: TextStyle(color: Colors.grey[300], height: 2),
                ),
                const SizedBox(height: 25),
                MyButton(
                  text: "Get Started",
                  onTap: () {
                    Navigator.pushNamed(context, '/menupage');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
