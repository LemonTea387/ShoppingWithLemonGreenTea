import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/view/shoppingCart/cart_screen.dart';

class AppBarMain extends AppBar {
  final BuildContext context;
  AppBarMain(this.context, String title, {Key? key})
      : super(
          key: key,
          title: Text(title),
          leading: IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: const Icon(Icons.arrow_back)),
          actions: [
            // Search Button
            // IconButton(onPressed: _navSearch, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScreenShoppingCart())),
                icon: const Icon(Icons.shopping_cart)),
          ],
        );
}
