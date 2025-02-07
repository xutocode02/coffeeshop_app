import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: "Black Coffee",
      price: "\$3.00",
      imagePath: "assets/icons/coffee.png",
      size: "S",
      quantity: "1",
    ),
    Coffee(
      name: "Espresso",
      price: "\$2.00",
      imagePath: "assets/icons/expresso.png",
      size: "S",
      quantity: "1",
    ),
    Coffee(
      name: "Iced Coffee",
      price: "\$4.00",
      imagePath: "assets/icons/ice-coffee.png",
      size: "S",
      quantity: "1",
    ),
    Coffee(
      name: "Iced Latte",
      price: "\$5.00",
      imagePath: "assets/icons/iced-latte.png",
      size: "S",
      quantity: "1",
    ),
  ];

  final List<Coffee> _cart = [];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get userCart => _cart;

  void addToCart(Coffee coffee) {
    _cart.add(coffee);
    notifyListeners();
  }

  void removeFromCart(Coffee coffee) {
    _cart.remove(coffee);
    notifyListeners();
  }

  void decrementQuantity(Coffee coffee) {
    int quant = int.parse(coffee.quantity);
    coffee.quantity = (quant - 1).toString();
    notifyListeners();
  }

  void addToQuantity(Coffee coffee, int addedQuant) {
    int quant = int.parse(coffee.quantity);
    coffee.quantity = (quant + addedQuant).toString();
    notifyListeners();
  }
}
