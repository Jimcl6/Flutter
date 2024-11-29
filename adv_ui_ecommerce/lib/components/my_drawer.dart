import 'package:adv_ui_ecommerce/components/my_button.dart';
import 'package:adv_ui_ecommerce/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // logo
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              // shop tile
              MyListTile(
                text: 'Shop',
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),
              // cart tile
              MyListTile(
                text: 'Cart',
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, '/cart_page');
                },
              ),

              // exit
            ],
          ),
          MyListTile(text: 'Exit shop', icon: Icons.logout, onTap: () {}),
        ],
      ),
    );
  }
}
