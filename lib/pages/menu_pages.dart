import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushiapp/components/button.dart';
import 'package:sushiapp/components/food_tile.dart';
import 'package:sushiapp/models/food.dart';
import 'package:sushiapp/pages/food_details_page.dart';
import 'package:sushiapp/themes/colors.dart';

class MenuPages extends StatefulWidget {
  const MenuPages({super.key});

  @override
  State<MenuPages> createState() => _MenuPagesState();
}

class _MenuPagesState extends State<MenuPages> {
  List foodMenu = [
    Food(
      name: "Salmón Sushi",
      price: "21.00",
      imagePath: "assets/imagenes/salmon_sushi.png",
      rating: "4.9",
    ),
    Food(
      name: "Tuna",
      price: "21.00",
      imagePath: "assets/imagenes/tuma.png",
      rating: "4.3",
    ),
  ];
  void navigatorToFoodDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(food: foodMenu[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.grey[900]),
        title: Text("tokyo", style: TextStyle(color: Colors.grey[900])),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get 32% Promo",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    MyButton(text: "Redeem", onTap: () {}),
                  ],
                ),

                Image.asset("assets/imagenes/many_sushi.png", height: 100),
              ],
            ),
          ),

          const SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Search here...",
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Popular",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 15,
              ),
            ),
          ),

          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: foodMenu.length,
              scrollDirection: Axis.horizontal,
              itemBuilder:
                  (BuildContext context, int index) => FoodTile(
                    food: foodMenu[index],
                    onTap: () => navigatorToFoodDetails(index),
                  ),
            ),
          ),
          const SizedBox(height: 25),

          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/imagenes/salmon_eggs.png", height: 60),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Salmon Eggs",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "\$21.00",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
