import 'package:flutter/material.dart';

import 'Product.dart';

class Cart {
  final Product product;
   int numOfItem;

  Cart({@required this.product, @required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
];
