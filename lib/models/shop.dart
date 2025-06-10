import 'package:flutter/material.dart';

import 'food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
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

  // customer cart
  List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
