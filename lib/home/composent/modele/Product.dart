import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final Color color;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.color,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
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
    color: Color.fromARGB(255, 128, 201, 247),
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
    color: Color.fromARGB(255, 250, 239, 141),
  ),
  Product(
    id: 3,
    images: [
      "assets/images/bag_1.png",
    ],
    color: Color(0xFF3D82AE),
    title: "Office Code",
    price: 356.55,
    description: description,
    rating: 9.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/bag_2.png",
    ],
    color: Color(0xFFD3A984),
    title: "Belt Bag",
    price: 20.20,
    description: description,
    rating: 7.4,
    isFavourite: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/bag_3.png",
    ],
    color: Color(0xFF3D82AE),
    title: "Hang Top",
    price: 187.99,
    description: description,
    rating: 5.9,
    isFavourite: true,
  ),
  Product(
    id: 7,
    images: [
      "assets/images/glap.png",
    ],
    color: Color(0xFFD3A984),
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 8,
    images: ["assets/images/bag_4.png"],
    color: Color(0xFFE6B398),
    title: "Old Fashion",
    price: 36.55,
    description: description,
    rating: 9.1,
    isFavourite: true,
  ),
  Product(
      id: 9,
      title: "Office Code",
      price: 500,
      description: description,
      images: ["assets/images/bag_5.png"],
      color: Color(0xFFFB7883),
      rating: 5.3),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
