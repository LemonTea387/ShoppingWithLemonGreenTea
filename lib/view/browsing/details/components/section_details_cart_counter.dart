import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/model/BuyOrder.dart';
import 'package:shopping_with_lemongreentea/model/Product.dart';
import 'package:shopping_with_lemongreentea/view/browsing/details/state_product_to_buy.dart';

class ComponentCartCounter extends StatefulWidget {
  final Product product;
  const ComponentCartCounter({Key? key, required this.product})
      : super(key: key);

  @override
  _ComponentCartCounterState createState() => _ComponentCartCounterState();
}

class _ComponentCartCounterState extends State<ComponentCartCounter> {
  @override
  Widget build(BuildContext context) {
    int countItems = ProductBuyStateScope.of(context).product.count;
    return Row(
      children: [
        _buildNumberModifyingButtons(
            const Icon(Icons.remove),
            () => {
                  setState(() {
                    if (countItems > 1) {
                      ProductBuyStateWidget.of(context).decrementOrderCoun();
                    }
                  })
                }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child:
              Text('$countItems', style: Theme.of(context).textTheme.headline6),
        ),
        _buildNumberModifyingButtons(const Icon(Icons.add), () {
          setState(() {
            if (countItems < widget.product.stock) {
              ProductBuyStateWidget.of(context).incrementOrderCount();
            }
          });
        }),
      ],
    );
  }

  Widget _buildNumberModifyingButtons(Icon icon, VoidCallback onPress) {
    return SizedBox(
      width: 40,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0))),
        onPressed: onPress,
        child: icon,
      ),
    );
  }
}
