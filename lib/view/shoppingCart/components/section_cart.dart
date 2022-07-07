import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/model/BuyOrder.dart';

class ComponentCart extends StatelessWidget {
  final List<BuyOrder> productsInCart;
  const ComponentCart({required this.productsInCart, Key? key})
      : super(key: key);

  Widget _buildCartTile(BuyOrder product) {
    return ListTile(
      leading: Image.asset(product.image, width: 100,height:100),
      title: Text(product.title),
      trailing: Text(product.count.toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: productsInCart.length,
        itemBuilder: (context, i) => _buildCartTile(productsInCart[i])
      )
    );
  }

  
}
