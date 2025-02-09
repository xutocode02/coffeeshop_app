import 'package:coffeeshop/const.dart';
import 'package:flutter/material.dart';

class StandardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StandardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      // leading: const Icon(Icons.menu),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
