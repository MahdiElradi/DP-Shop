import 'package:flutter/material.dart';
import 'package:test_store/presentation/screens/cart_page.dart';
import 'package:test_store/presentation/screens/home_page.dart';
import 'package:test_store/presentation/screens/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => const HomePage(),
        "CartPage": (context) => const CartPage(),
        "ItemPage": (context) => ItemPage(),
      },
    );
  }
}
