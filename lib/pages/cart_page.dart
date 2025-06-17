import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_items.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatelessWidget {
    const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
    builder: (context, value, child) => Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
              "My Cart",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),

          ),

          const SizedBox(height: 24,),

          Expanded(
            child: ListView.builder(
              itemCount: value.getCart().length,
              itemBuilder: (context, index) {
                Shoe individualShoe = value.getCart()[index];
                return CartItems(shoe: individualShoe);
              },
            ),
          ),

        ],
      ),
    ),
    );
  }
}