import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/model/Product.dart';
import 'package:shopping_with_lemongreentea/state_app.dart';
import 'package:shopping_with_lemongreentea/view/browsing/details/state_product_to_buy.dart';

import 'section_color_size.dart';
import 'section_details_description.dart';
import 'section_details_cart_counter.dart';

class ComponentProductDetails extends StatelessWidget {
  final Product product;
  const ComponentProductDetails({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeCanvas = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: sizeCanvas.height * 0.3),
              padding: EdgeInsets.only(
                  top: sizeCanvas.height * 0.12, left: 24.0, right: 24.0),
              height: 500,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ComponentColorSize(product: product),
                  ComponentDetailsDescription(product: product),
                  ComponentCartCounter(product: product),
                  const ComponentBuyButton()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          const TextSpan(
                              text: "Price\n", style: TextStyle(fontSize: 16)),
                          TextSpan(
                              text: "MYR ${product.price}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                        ]),
                      ),
                      const SizedBox(width: 24),
                      Expanded(child: Image.asset(product.image))
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}

class ComponentBuyButton extends StatelessWidget{
  const ComponentBuyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        AppStateWidget.of(context).addToShoppingCart(ProductBuyStateScope.of(context).product);
        Navigator.pop(context);
      },
      child: const Text(
        "Add to Cart!"
      ),
    );
  }
}
