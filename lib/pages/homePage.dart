import 'package:coffeeshop/components/bottomNavBar.dart';
import 'package:coffeeshop/const.dart';
import 'package:coffeeshop/pages/cart_page.dart';
import 'package:coffeeshop/pages/shop_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> _pages = [
    ShopPage(),
    const CartPage(),
  ];

  int _selectedIndex = 0;

  void navigateBottomBar(value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavbar(
        onTabChange: (value) => navigateBottomBar(value),
      ),
    );
  }
}
