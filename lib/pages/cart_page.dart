import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushiapp/components/button.dart';
import 'package:sushiapp/models/food.dart';
import 'package:sushiapp/models/shop.dart';
import 'package:sushiapp/themes/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder:
          (context, value, child) => Scaffold(
            backgroundColor: primaryColor,
            appBar: AppBar(
              title: const Text("My Cart"),
              elevation: 0,
              backgroundColor: primaryColor,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: value.cart.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Food food = value.cart[index];
                      final String foodName = food.name;
                      final String foodPrice = food.price;

                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: secondaryColor,
                        ),
                        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                        child: ListTile(
                          title: Text(
                            foodName,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            foodPrice,
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () => removeFromCart(food, context),
                            icon: Icon(Icons.delete, color: Colors.grey[300]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: MyButton(text: "Pay Now", onTap: () {}),
                ),
              ],
            ),
          ),
    );
  }
}
