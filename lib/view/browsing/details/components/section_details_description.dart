import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/model/Product.dart';

class ComponentDetailsDescription extends StatelessWidget {
  const ComponentDetailsDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        product.description,
        style: const TextStyle(fontSize: 20.0,height: 1.5)
      ),
    );
  }
}
