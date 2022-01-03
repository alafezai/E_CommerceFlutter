import 'package:ecommerce/detailsScreen/details.dart';

import 'package:ecommerce/home/composent/modele/Product.dart';
import 'package:ecommerce/home/homeproduct/categories.dart';
import 'package:ecommerce/home/homeproduct/detailsprodall.dart';

import 'package:flutter/material.dart';

// import 'package:shop_app/screens/details/details_screen.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            "All product",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                itemCount: demoProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: demoProducts[index],
                      Press: () => Navigator.pushNamed(
                          context, DeilsAllProd.routeName,
                          arguments:
                              ProductargV2(product: demoProducts[index])),
                    )),
          ),
        ),
      ],
    );
  }
}

class Prodarg {
  final Product product;

  // ignore: invalid_required_positional_param
  Prodarg({required this.product});
}

class ProductargV2 {
  final Product product;

  // ignore: invalid_required_positional_param
  ProductargV2({required this.product});
}
