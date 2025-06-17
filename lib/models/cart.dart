import 'package:commercial_app_20250614/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(name: 'Air Max', price: '120.0', imagePath: 'lib/images/shoe2.png', description: 'Comfortable and stylish'),
    Shoe(name: 'Zoom Fly', price: '150.0', imagePath: 'lib/images/shoe1.png', description: 'Flexible and breathable'),
    Shoe(name: 'React Infinity', price: '130.0', imagePath: 'lib/images/shoe3.png', description: 'Durable and supportive'),
    Shoe(name: 'Pegasus Trail', price: '140.0', imagePath: 'lib/images/shoe4.png', description: 'Perfect for off-road'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop ;
  }

  List<Shoe> getCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

}