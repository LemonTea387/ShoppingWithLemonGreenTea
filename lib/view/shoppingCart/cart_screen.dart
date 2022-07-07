import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/model/BuyOrder.dart';
import 'package:shopping_with_lemongreentea/state_app.dart';
import 'package:shopping_with_lemongreentea/view/shoppingCart/components/section_cart.dart';

class ScreenShoppingCart extends StatelessWidget {
  const ScreenShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BuyOrder> cart = AppStateScope.of(context).shoppingCart;
    Widget sectionCart = ComponentCart(productsInCart: cart);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(children: [sectionCart]),
    );
  }
}