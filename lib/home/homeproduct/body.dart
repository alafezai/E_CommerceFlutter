import 'package:ecommerce/home/homeproduct/bodyAllprd.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/home/homeproduct/product.dart';

import 'package:ecommerce/home/homeproduct/categories.dart';
import 'package:flutter_svg/svg.dart';
import 'item_card.dart';

class BodyProduct extends StatelessWidget {
  static String routeName = "/allprod";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: const Color(0xFF535353),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: const Color(0xFF535353),
          ),
          onPressed: () {},
        ),
        SizedBox(width: 20.0 / 2)
      ],
    );
  }
}
