import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';
class CartItems extends StatefulWidget{
  final Shoe shoe;
  CartItems({
    required this.shoe,
    super.key
  });

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {

  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
          border: Border(
              bottom: BorderSide(color: Colors.grey.shade300)
          ),
      ),
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 12),
      child: ListTile(
          leading: Image.asset(widget.shoe.imagePath),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(
            onPressed: removeItemFromCart,
            icon: Icon(Icons.delete, color: Colors.grey,),
          )
      ),
    );
  }
}