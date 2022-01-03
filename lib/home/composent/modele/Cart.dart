import 'package:ecommerce/home/composent/modele/Product.dart';

// import 'package:flutter/material.dart';

class CartModel {
  final Product product;
  final int Nbitems;

  CartModel({required this.product, required this.Nbitems});
}

List<CartModel> testCart = [
  // CartModel(product: demoProducts[0], Nbitems: 2345678),
  // CartModel(product: demoProducts[1], Nbitems: 1),
  // CartModel(product: demoProducts[3], Nbitems: 1),
];

double totalPrice() {
  double t = 0;
  testCart.forEach((prod) {
    t += prod.product.price;
  });
  return t;
}



//
