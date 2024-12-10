import 'package:adv_ui_ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adv_ui_ecommerce/models/shop.dart';
import 'package:adv_ui_ecommerce/components/my_drawer.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text('Remove this item to your cart?'),
        actions: [
          // Cancel
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          // yes
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<Shop>().removeFromCart(product);
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // get access to the cart
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: const MyDrawer(),
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text(
          'Cart Page',
        ),
      ),
      body: Column(
        children: [
          // cart list
          Expanded(
              child: ListView.builder(
            itemCount: cart.length,
            itemBuilder: (context, index) {
              // get individual item in cart
              final item = cart[index];

              //return as a list tile.
              return ListTile(
                title: Text(item.name),
                subtitle: Text(item.price.toStringAsFixed(2)),
                trailing: IconButton(
                  onPressed: () => removeItemFromCart(context, item),
                  icon: Icon(
                    Icons.remove,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              );
            },
          ))
          // pay button
        ],
      ),
    );
  }
}
