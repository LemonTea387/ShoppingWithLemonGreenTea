import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/model/BuyOrder.dart';

import 'package:shopping_with_lemongreentea/model/Product.dart';
import 'package:shopping_with_lemongreentea/view/browsing/details/components/section_details_product_info.dart';
import 'package:shopping_with_lemongreentea/view/browsing/details/state_product_to_buy.dart';
import 'package:shopping_with_lemongreentea/view/shoppingCart/cart_screen.dart';

class ScreenDetails extends StatelessWidget {
  final Product product;

  const ScreenDetails({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[500],
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        elevation: 0,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context)),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScreenShoppingCart())),
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: ProductBuyStateWidget(
          product: BuyOrder(
              id: product.id,
              count: 1,
              image: product.image,
              price: product.price,
              size: product.size,
              title: product.title),
              child: ComponentProductDetails(
                product: product,
              )),
    );
  }
}
