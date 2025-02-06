import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  final String selectedSize;
  final String size;
  void Function() onTap;

  SizeSelector({
    super.key,
    required this.selectedSize,
    required this.size,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 50,
        decoration: BoxDecoration(
          color: selectedSize == size
              ? Colors.brown
              : const Color.fromARGB(99, 253, 215, 180),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              color: selectedSize == size ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
