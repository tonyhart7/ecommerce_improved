import 'package:ecommerce_improved/models/Product.dart';

class Cart {
  final Product product;
  final int numOfItems;

  Cart({
    required this.product,
    required this.numOfItems,
  });
}

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItems: 2),
  Cart(product: demoProducts[1], numOfItems: 4),
  Cart(product: demoProducts[3], numOfItems: 1),
];
