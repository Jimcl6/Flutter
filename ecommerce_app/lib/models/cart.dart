import 'package:flutter/foundation.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '250',
      description: 'Become as fast as Zoom',
      imagePath: 'images/louis-vuitton-air-force1-low.jpg',
    ),
    Shoe(
      name: 'Dunk Low',
      price: '236',
      description: 'Become as fast as Zoom',
      imagePath: 'images/nike_dunk_low.jpg',
    ),
    Shoe(
      name: 'Dunk Cacao Wow',
      price: '350',
      description: 'Become as fast as Zoom',
      imagePath: 'images/nike-dunk-cacao-wow-low.jpg',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '236',
      description: 'Become as fast as Zoom',
      imagePath: 'images/air-jordan-bred-toe-low.jpg',
    ),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // adding items from cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemsFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
