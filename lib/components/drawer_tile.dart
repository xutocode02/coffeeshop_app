import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  DrawerTile({
    super.key,
    required this.icon,
    required this.title,
    required this.func,
  });

  Icon icon;
  String title;
  void Function() func;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: func,
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
