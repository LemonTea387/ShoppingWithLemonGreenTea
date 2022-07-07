import 'package:flutter/cupertino.dart';
import 'package:shopping_with_lemongreentea/model/BuyOrder.dart';


class AppState {
  final List<BuyOrder> shoppingCart;
  AppState({this.shoppingCart = const []});

  AppState copyWith({List<BuyOrder>? shoppingCart}) {
    return AppState(shoppingCart: shoppingCart ?? this.shoppingCart);
  }
}

class AppStateScope extends InheritedWidget {
  const AppStateScope(this.data, {Key? key, required Widget child})
      : super(key: key, child: child);

  final AppState data;

  static AppState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppStateScope>()!.data;
  }

  @override
  bool updateShouldNotify(AppStateScope oldWidget) {
    return data != oldWidget.data;
  }
}

class AppStateWidget extends StatefulWidget {
  final Widget child;
  const AppStateWidget({Key? key, required this.child}) : super(key: key);

  static AppStateWidgetState of(BuildContext context) {
    return context.findAncestorStateOfType<AppStateWidgetState>()!;
  }

  @override
  AppStateWidgetState createState() => AppStateWidgetState();
}

class AppStateWidgetState extends State<AppStateWidget> {
  AppState _data = AppState();

  @override
  Widget build(BuildContext context) {
    return AppStateScope(_data, child: widget.child);
  }

  void setShoppingCart(List<BuyOrder> newShoppingCart) {
    if (_data.shoppingCart != newShoppingCart) {
      setState(() {
        _data = _data.copyWith(shoppingCart: newShoppingCart);
      });
    }
  }

  void addToShoppingCart(BuyOrder product) {
    if (!_data.shoppingCart.contains(product)) {
      setState(() {
        final List<BuyOrder> newShoppingCart =
            List<BuyOrder>.from(_data.shoppingCart);
        newShoppingCart.add(product);
        _data = _data.copyWith(shoppingCart: newShoppingCart);
      });
    }
  }

  void removeFromShoppingCart(BuyOrder product) {
    if (_data.shoppingCart.contains(product)) {
      setState(() {
        final List<BuyOrder> newShoppingCart =
            List<BuyOrder>.from(_data.shoppingCart);
        newShoppingCart.remove(product);
        _data = _data.copyWith(shoppingCart: newShoppingCart);
      });
    }
  }
}
