import 'dart:isolate';

import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description, price;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final bool isFavourite, isCloth, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    this.isCloth = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Tay cầm không dây PS4",
    price: '95.000',
    description: description,
    rating: 4.8,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Quần thể thao nam Nike",
    price: '65.000',
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/necklace.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Vòng cổ nữ đính đá Shaphire",
    price: '40.500',
    description: 'Vòng cổ đính đá Shaphire dành cho nữ giới, được sản xuất bằng công nghệ tin xảo nhất tại Italia.',
    rating: 4.1,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Tai nghe Logitech",
    price: '99.600',
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/cloth1.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Áo phông đẹp nam số 1",
    price: '99.600',
    description: description,
    rating: 4.1,
    isCloth: true,
   // isCloth: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/cloth2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Áo phông đẹp nam số 2",
    price: '99.600',
    description: description,
    rating: 4.1,
    isCloth: true,
    //isCloth: true,
  ),
  Product(
    id: 7,
    images: [
      "assets/images/cloth3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Áo phông đẹp nam số 3",
    price: '99.600',
    description: description,
    rating: 4.1,
    isCloth: true,
   // isCloth: true,
  ),
  Product(
    id: 8,
    images: [
      "assets/images/cloth4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Áo phông đẹp nam số 4",
    price: '99.600',
    description: description,
    rating: 4.1,
    isCloth: true,
   // isCloth: true,
  ),

];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
