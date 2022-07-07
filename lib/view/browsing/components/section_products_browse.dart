import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/model/Product.dart';
import 'package:shopping_with_lemongreentea/view/browsing/details/details_screen.dart';

class ComponentProductBrowsing extends StatelessWidget {
  const ComponentProductBrowsing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.85),
          itemCount: products.length,
          itemBuilder: (context, i) => ProductCard(product: products[i])),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ScreenDetails(product: product))),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              width: 160,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.circular(16.0)),
              child: Image.asset(product.image),
            ),
            Text(
              product.title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            )
          ],
        ));
  }
}
