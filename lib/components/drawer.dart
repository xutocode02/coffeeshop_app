import 'package:coffeeshop/components/drawer_tile.dart';
import 'package:coffeeshop/const.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.all(30),
        // height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    child: Center(
                      child: Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icons/expresso.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  DrawerTile(
                    icon: Icon(Icons.home, color: Colors.grey[800]),
                    title: "Home",
                    func: () {
                      Navigator.pushReplacementNamed(context, "/home");
                    },
                  ),
                  DrawerTile(
                    icon: Icon(Icons.info, color: Colors.grey[800]),
                    title: "About",
                    func: () {
                      print("No About Page yet");
                      Navigator.pushReplacementNamed(context, "/home");
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              child: DrawerTile(
                icon: Icon(
                  Icons.logout,
                  color: Colors.grey[800],
                ),
                title: "Logout",
                func: () {
                  Navigator.pushReplacementNamed(context, "/start");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
