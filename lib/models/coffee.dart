class Coffee {
  final String name;
  final String price;
  final String imagePath;
  Map? sizeAndQuantity = {
    "size": "",
    "quantity": "",
  };

  Coffee({
    required this.name,
    required this.price,
    required this.imagePath,
    this.sizeAndQuantity,
  });
}
