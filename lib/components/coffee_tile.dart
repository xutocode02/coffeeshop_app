import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({
    super.key,
    required this.eachCoffee,
  });

  final Coffee eachCoffee;

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
        subtitle: Text(
          eachCoffee.price,
          style: TextStyle(
            color: Colors.grey[700],
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_sharp),
      ),
    );
  }
}
