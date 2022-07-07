import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/view/home/components/section_categories.dart';
import 'package:shopping_with_lemongreentea/view/shoppingCart/cart_screen.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  static const List<String> categories = [
    'Green Tea',
    'Cats',
    'Green Tea and Cats',
    'Matcha',
    'Matcha and Cats'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO Featured Items
    Widget sectionFeaturedItems = const Placeholder(
      fallbackHeight: 200,
    );
    Widget sectionCategorySelection =
        const ComponentHomeCategories(categories: categories);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping With LemonGreenTea!'),
        actions: [
          IconButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScreenShoppingCart()
                      )
                  )
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Column(
        children: [sectionFeaturedItems, sectionCategorySelection],
      ),
    );
  }
}
