import 'package:flutter/material.dart';
import 'package:shopping_with_lemongreentea/state_app.dart';
import 'package:shopping_with_lemongreentea/view/browsing/browsing_screen.dart';
import 'package:shopping_with_lemongreentea/view/home/home_screen.dart';

void main() {
  runApp(const Main());
}

/*
  Root of Application
*/
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppStateWidget( 
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping with Lemon Green Tea',
      home: ScreenHome()
      )
    );
  }
}

