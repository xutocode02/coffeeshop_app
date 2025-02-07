import 'package:coffeeshop/components/standard_button.dart';
import 'package:coffeeshop/const.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    void navigateToHomeScreen() {
      Navigator.pushReplacementNamed(context, "/home");
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/icons/expresso.png", height: 150),
            const SizedBox(
              height: 40,
              width: double.infinity,
            ),
            const Text(
              "Brew Day",
              style: TextStyle(
                color: Color.fromARGB(255, 87, 61, 52),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "How do you like your coffee?",
              style: TextStyle(
                color: Color.fromARGB(255, 87, 61, 52),
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 40,
              width: double.infinity,
            ),
            StandardButton(text: "Enter Shop", func: navigateToHomeScreen),
          ],
        ),
      ),
    );
  }
}
