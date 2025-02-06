import 'package:coffeeshop/components/coffee_tile.dart';
import 'package:coffeeshop/const.dart';
import 'package:coffeeshop/models/coffee.dart';
import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  // CoffeeShop coffeeShop = CoffeeShop();

  @override
  Widget build(BuildContext context) {
    void tapOnTile(Coffee coffee) {
      Navigator.pushNamed(
        context,
        "/quantity",
        arguments: {
          "coffee": coffee,
        },
      );
    }

    return Consumer<CoffeeShop>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: backgroundColor,
              appBar: AppBar(
                backgroundColor: backgroundColor,
                leading: const Icon(Icons.menu),
              ),
              body: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 35,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "How do you like your coffee?",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ListView.separated(
                          itemCount: value.coffeeShop.length,
                          itemBuilder: (context, index) {
                            Coffee eachCoffee = value.coffeeShop[index];
                            return CoffeeTile(
                              eachCoffee: eachCoffee,
                              onTap: () {
                                tapOnTile(eachCoffee);
                              },
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: 15);
                          }),
                    ),
                  ],
                ),
              ),
            ));
  }
}
