import 'package:adv_ui_ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //products for sale
  final List<Product> _shop = [
    // prod 1
    Product(
      name: "Product 1",
      price: 12.00,
      prodDesc: 'Lorem ipsum dolor sit amet',
      // imagePath: 'imagePath',
    ),
    // prod 2
    Product(
      name: "Product 2",
      price: 12.00,
      prodDesc: 'Lorem ipsum dolor sit amet',
      // imagePath: 'imagePath',
    ),
    // prod 3
    Product(
      name: "Product 3",
      price: 12.00,
      prodDesc: 'Lorem ipsum dolor sit amet',
      // imagePath: 'imagePath',
    ),
    // prod 4
    Product(
      name: "Product 4",
      price: 12.00,
      prodDesc: 'Lorem ipsum dolor sit amet',
      // imagePath: 'imagePath',
    ),
  ];

  // user cart
  final List<Product> _cart = [];
  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }
  // remove item from cart

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
