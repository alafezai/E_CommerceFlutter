// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/cart/composents/bodycart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../home/composent/modele/Cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Text(
              "Your Cart",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text(
              "${testCart.length}   items",
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      )),
      body: BodyCart(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        height: 174,
        // color: Colors.blue,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -15),
                  blurRadius: 20,
                  color: Color(0xFFDADADA).withOpacity(0.55))
            ]),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: SvgPicture.asset("assets/images/receipt.svg"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 3, left: 70),
                  child: FlatButton(
                    padding: EdgeInsets.all(20),
                    minWidth: 240,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.orange,
                    onPressed: () {
                      //    Navigator.pushNamed(context, SinginScreen.routeName);
                    },
                    child: Text(
                      "Check Out ",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text.rich(TextSpan(text: "Total : \n", children: [
                  TextSpan(
                      text: totalPrice().toString(),
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))
                ])),
              ],
            )
          ],
        ),
      ),
    );
  }
}
