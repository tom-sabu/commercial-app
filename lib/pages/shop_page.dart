import 'package:flutter/material.dart';

import '../components/shoe_tile.dart';
import '../models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //search tab
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          margin: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search", style: TextStyle(color: Colors.grey, fontSize: 16),),
                Icon(Icons.search, color: Colors.grey,),
              ],
            ),
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
          child: Text(
              "twinkle twinkle little star, how i wonder what you are!",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
          ),
        ),

        //hot list
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "HOT PICKS 🔥",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),

        //list
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(name: 'My Shoe', price: '500.0 ₹', imagePath: 'lib/images/shoe1.jpeg', description: 'Best Seller');
              return ShoeTile(
                shoe: shoe,
                isLastItem: index == 3,
              );
            },
          ),
        ),

      ],
    );
  }
}