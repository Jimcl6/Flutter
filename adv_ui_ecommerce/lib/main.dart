import 'package:adv_ui_ecommerce/models/shop.dart';
import 'package:adv_ui_ecommerce/pages/cart_page.dart';
import 'package:adv_ui_ecommerce/pages/intro_page.dart';
import 'package:adv_ui_ecommerce/pages/shop_page.dart';
import 'package:adv_ui_ecommerce/themes/light_mode.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
