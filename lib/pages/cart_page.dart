import 'package:coffeeshop/components/cart_coffee_tile.dart';
import 'package:coffeeshop/components/drawer.dart';
import 'package:coffeeshop/components/standard_app_bar.dart';
import 'package:coffeeshop/components/standard_button.dart';
import 'package:coffeeshop/const.dart';
import 'package:coffeeshop/models/coffee.dart';
import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    void subtractCoffee({required Coffee coffee}) {
      var coffeeShop = Provider.of<CoffeeShop>(context, listen: false);
      int quant = int.parse(coffee.quantity);
      if (quant > 1) {
        coffeeShop.decrementQuantity(coffee);
      } else {
        coffeeShop.removeFromCart(coffee);
      }
    }

    var cart = Provider.of<CoffeeShop>(context, listen: false).userCart;
    if (cart.isEmpty) {
      return Scaffold(
        backgroundColor: backgroundColor,
        appBar: const StandardAppBar(),
        drawer: const MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 35,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Expanded(
                  child: SizedBox(
                width: double.infinity,
              )),
              const SizedBox(height: 20),
              Container(
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icons/expresso.png")),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Oops, your cart is still empty...",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                ),
              ),
              const Expanded(
                child: SizedBox(
                  width: double.infinity,
                ),
              ),
              StandardButton(
                text: "Pay now",
                func: () {
                  print("not implemented");
                },
              ),
            ],
          ),
        ),
      );
    }

    return Consumer<CoffeeShop>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: backgroundColor,
              appBar: const StandardAppBar(),
              drawer: const MyDrawer(),
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
                        "Your Cart",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: ListView.separated(
                            itemCount: value.userCart.length,
                            itemBuilder: (context, index) {
                              Coffee eachCoffee = value.userCart[index];
                              return CartCoffeeTile(
                                eachCoffee: eachCoffee,
                                subtitle: "Size: ${eachCoffee.size} || Qty: ",
                                quantity: eachCoffee.quantity,
                                icon: const Icon(Icons.delete),
                                onTap: () {
                                  subtractCoffee(coffee: eachCoffee);
                                },
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: 15);
                            }),
                      ),
                      const SizedBox(height: 20),
                      StandardButton(
                        text: "Pay now",
                        func: () {
                          print("not implemented");
                        },
                      ),
                    ],
                  )),
            ));
  }
}
