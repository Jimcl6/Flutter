import 'package:adv_ui_ecommerce/components/my_drawer.dart';
import 'package:adv_ui_ecommerce/components/my_product_tile.dart';
import 'package:adv_ui_ecommerce/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access product in shop.dart
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Shop Page'),
      ),
      drawer: const MyDrawer(),
      body: ListView(children: [
        const SizedBox(
          height: 25,
        ),
        //shop subtitle
        Center(
          child: Text(
            'Pick from a selected list of premium products',
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
        ),

        //product list
        SizedBox(
          height: 550,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(15),
            itemCount: products.length,
            itemBuilder: (context, index) {
              // get each individual product from shop
              final product = products[index];

              // return as a product tile UI.
              return MyProductTile(product: product);
            },
          ),
        ),
      ]),
    );
  }
}
