import 'dart:isolate';

import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description, price, type;
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
    this.type = '',
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
      "assets/images/giay1.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Giày nam dáng đẹp replica",
    price: '299.000',
    description: description,
    rating: 4.1,
    isPopular: true,
    isFavourite: true,
  ),
  Product(
      id: 2,
      images: [
        "assets/images/skincare1.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Bảng Phấn Mắt Perfect Diary",
      price: '299.000',
      description: description,
      rating: 4.1,
      isFavourite: true,
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
    description:
        'Vòng cổ đính đá Shaphire dành cho nữ giới, được sản xuất bằng công nghệ tin xảo nhất tại Italia.',
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
    type: 'Cloth',
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
    isFavourite: true,
    type: 'Cloth',
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
    type: 'Cloth',
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
    type: 'Cloth',
  ),
  Product(
    id: 9,
    images: [
      "assets/images/skincare1.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Bảng Phấn Mắt Perfect Diary",
    price: '299.000',
    description: description,
    rating: 4.1,
    isFavourite: true,
    type: 'Skincare',
  ),
  Product(
    id: 10,
    images: [
      "assets/images/skincare2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Son LipStick Wham A20 đỏ ",
    price: '150.000',
    description: description,
    rating: 4.1,
    isFavourite: false,
    type: 'Skincare',
  ),
  Product(
    id: 11,
    images: [
      "assets/images/skincare3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Kem chống nắng L'oreal UV Perfect",
    price: '60.000',
    description: description,
    rating: 4.1,
    type: 'Skincare',
  ),
  Product(
    id: 12,
    images: [
      "assets/images/skincare4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Son mịn lì cao cấp L'Oreal Paris",
    price: '120.500',
    description: description,
    rating: 4.1,
    type: 'Skincare',
  ),
    Product(
    id: 13,
    images: [
      "assets/images/giay1.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Giày nam dáng đẹp replica",
    price: '299.000',
    description: description,
    rating: 4.1,
    isFavourite: true,
    type: 'Shoe',
  ),
  Product(
    id: 14,
    images: [
      "assets/images/giay2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Giày nam dáng đẹp replica",
    price: '150.000',
    description: description,
    rating: 4.1,
    isFavourite: true,
    type: 'Shoe',
  ),
  Product(
    id: 15,
    images: [
      "assets/images/giay3.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Giày nam dáng đẹp replica",
    price: '60.000',
    description: description,
    rating: 4.1,
    type: 'Shoe',
  ),
  Product(
    id: 16,
    images: [
      "assets/images/giay4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Giày nam dáng đẹp replica",
    price: '120.500',
    description: description,
    rating: 4.1,
    type: 'Shoe',
  ),
  Product(
    id: 17,
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
    price: '99.900',
    description: description,
    rating: 4.1,
    isFavourite: true,
    type: 'Cloth',
  ),
];

const String description =
    "Sản phẩm được nhập khẩu từ nước ngoài, được sản xuất với chất lượng tốt nhất hiện nay. Rất đáng đồng tiền bát gạo.";
