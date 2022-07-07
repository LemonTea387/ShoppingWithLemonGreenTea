import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/view/browsing/browsing_screen.dart';

class ComponentHomeCategories extends StatelessWidget {
  final List<String> categories;
  const ComponentHomeCategories({Key? key, required this.categories})
      : super(key: key);

  Widget _buildCategoriesTile(BuildContext context, String category) {
    return ListTile(
      title: Text(category),
      trailing: const Icon(Icons.arrow_right_outlined),
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ScreenBrowsingProducts(category: category)))
      },
    );
  }

  Widget _buildCategoriesSelections(
      BuildContext context, List<String> categories) {
    return ListView.builder(
        padding: const EdgeInsets.all(8.0),
        // Prevent RangeError by setting the bounds
        // *2 due to half being Dividers.
        itemCount: categories.length * 2,
        itemBuilder: (context, i) {
          return i.isOdd
              ? const Divider()
              : _buildCategoriesTile(context, categories[i ~/ 2]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(children: [
      const Padding(
          padding: EdgeInsets.all(24.0),
          child: Align(
              alignment: Alignment.centerLeft, 
              child: Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0
                )
              ))),
      Expanded(child: _buildCategoriesSelections(context, categories))
    ]));
  }
}
