import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbar extends StatelessWidget {
  void Function(int) onTabChange;

  BottomNavbar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: GNav(
        onTabChange: (value) {
          onTabChange(value);
        },
        mainAxisAlignment: MainAxisAlignment.center,
        tabActiveBorder: Border.all(
          color: Colors.white,
        ),
        tabBorderRadius: 25,
        gap: 8,
        color: Colors.grey[500],
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: "Cart",
          ),
        ],
      ),
    );
  }
}
