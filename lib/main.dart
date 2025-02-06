import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:coffeeshop/pages/quantity_page.dart';
import 'package:flutter/material.dart';
import 'package:coffeeshop/pages/homePage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        initialRoute: "/home",
        routes: {
          "/home": (context) => const Homepage(),
          "/quantity": (context) => const QuantityPage(),
        },
      ),
    );
  }
}
