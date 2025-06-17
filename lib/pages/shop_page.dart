import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Added ${shoe.name} to cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) =>
          SingleChildScrollView(
            child: Column(
              children: [

                //search tab
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24,),
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Search",
                          style: TextStyle(color: Colors.grey, fontSize: 16),),
                        Icon(Icons.search, color: Colors.grey,),
                      ],
                    ),
                  ),
                ),

                //message
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 12),
                  child: Text(
                    textAlign: TextAlign.center,
                    "twinkle twinkle little star, how i wonder what you are!",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      height: 1.2, // Controls the line height. A value of 1.5 means 1.5 times the font size.
                    ),
                  ),
                ),

                //hot list
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "HOT PICKS 🔥",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
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
                SizedBox(
                  height: 440, // Provide a fixed height for the horizontal ListView
                  child: ListView.builder(
                    itemCount: value.getShoeList().length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getShoeList()[index];
                      return ShoeTile(
                        shoe: shoe,
                        isLastItem: index == value.getShoeList().length - 1,
                        onTap: () => addShoeToCart(shoe),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 0, left: 24, right: 32),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey[200],
                  ),
                ),

              ],
            ),
          ),
    );
  }
}