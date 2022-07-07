import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/view/browsing/components/section_products_browse.dart';
import 'package:shopping_with_lemongreentea/view/default_appbar.dart';

class ScreenBrowsingProducts extends StatelessWidget {
  final String category;
  const ScreenBrowsingProducts({required this.category, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sections of page
    Widget sectionProductBrowsing = const ComponentProductBrowsing();

    return Scaffold(
        appBar: AppBarMain(context, category),
        body: Column(
          children: [
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Products',
                      style: TextStyle(
                          fontSize: 36.0, fontWeight: FontWeight.bold),
                    ))),
            sectionProductBrowsing
          ],
        ));
  }
}
