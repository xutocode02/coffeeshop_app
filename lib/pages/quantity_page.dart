import 'package:coffeeshop/components/size_selector.dart';
import 'package:coffeeshop/components/standard_button.dart';
import 'package:coffeeshop/const.dart';
import 'package:coffeeshop/models/coffee.dart';
import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuantityPage extends StatefulWidget {
  const QuantityPage({super.key});

  @override
  State<QuantityPage> createState() => _QuantityPageState();
}

class _QuantityPageState extends State<QuantityPage> {
  int quantity = 1;
  String selectedSize = "S";

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Coffee coffee = args["coffee"];

    void selectSize(String size) {
      if (selectedSize != size) {
        setState(() {
          selectedSize = size;
        });
      }
    }

    void addToCart(Coffee coffee) {
      Provider.of<CoffeeShop>(context, listen: false).addToCart(coffee);
    }

    return Consumer<CoffeeShop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(),
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(coffee.imagePath),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "QUANTITY",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                  letterSpacing: 3,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "-",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 35,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        quantity.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "+",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                "SIZE",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                  letterSpacing: 3,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizeSelector(
                      selectedSize: selectedSize,
                      size: "S",
                      onTap: () {
                        selectSize("S");
                      }),
                  const SizedBox(width: 10),
                  SizeSelector(
                      selectedSize: selectedSize,
                      size: "M",
                      onTap: () {
                        selectSize("M");
                      }),
                  const SizedBox(width: 10),
                  SizeSelector(
                      selectedSize: selectedSize,
                      size: "L",
                      onTap: () {
                        selectSize("L");
                      }),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Container(),
              ),
              StandardButton(
                  text: "Add to cart",
                  func: () {
                    addToCart(coffee);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
