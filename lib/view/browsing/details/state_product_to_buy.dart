import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/model/BuyOrder.dart';

class ProductBuyState {
  final BuyOrder product;
  ProductBuyState({required this.product});
}

class ProductBuyStateScope extends InheritedWidget {
  const ProductBuyStateScope(this.data, {Key? key, required Widget child})
      : super(key: key, child: child);

  final ProductBuyState data;

  static ProductBuyState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProductBuyStateScope>()!.data;
  }

  @override
  bool updateShouldNotify(ProductBuyStateScope oldWidget) {
    return data != oldWidget.data;
  }
}

class ProductBuyStateWidget extends StatefulWidget {
  final Widget child;
  final BuyOrder product;

  const ProductBuyStateWidget({Key? key, required this.child, required this.product}) : super(key: key);

  static ProductBuyStateWidgetState of(BuildContext context) {
    return context.findAncestorStateOfType<ProductBuyStateWidgetState>()!;
  }

  @override
  ProductBuyStateWidgetState createState() => ProductBuyStateWidgetState();
}

class ProductBuyStateWidgetState extends State<ProductBuyStateWidget> {
  late ProductBuyState _data;

  @override
  Widget build(BuildContext context) {
    _data = ProductBuyState(product: widget.product);
    return ProductBuyStateScope(_data, child: widget.child);
  }

  void incrementOrderCount() {
    widget.product.count+=1;
  }

  void decrementOrderCoun() {
    widget.product.count-=1;
  }

}