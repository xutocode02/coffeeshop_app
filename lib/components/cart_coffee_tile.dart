import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CartCoffeeTile extends StatelessWidget {
  CartCoffeeTile({
    super.key,
    required this.eachCoffee,
    required this.subtitle,
    required this.quantity,
    required this.onTap,
    required this.icon,
  });

  final Coffee eachCoffee;
  final String subtitle;
  final String quantity;
  final Icon icon;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
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
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            Text(
              quantity,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        trailing: IconButton(
          icon: icon,
          onPressed: onTap,
        ),
      ),
    );
  }
}
