import 'package:coffeeshop/const.dart';
import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  CoffeeTile({
    super.key,
    required this.eachCoffee,
    required this.subtitle,
    required this.onTap,
    required this.icon,
  });

  final Coffee eachCoffee;
  final String subtitle;
  final Icon icon;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 25,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // color: Colors.white,
          color: backgroundTile,
        ),
        child: ListTile(
          leading: Image.asset(eachCoffee.imagePath),
          title: Text(
            eachCoffee.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
          trailing: icon,
        ),
      ),
    );
  }
}
