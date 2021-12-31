// ignore_for_file: deprecated_member_use

import 'package:ecommerce/home/composent/modele/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  final ProductDetailsarg arguments = ModalRoute.of(context).settings.arguments;
    final args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsarg;
    return Scaffold(
      appBar: AppBar(
          title: Align(
              child: Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(left: 270),
                child: Row(
                  children: [
                    Text(args.product.rating.toString(),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20)),
                    SvgPicture.asset("assets/images/Star Icon.svg"),
                  ],
                ),
              ),
              alignment: Alignment.center)),
      // ignore: prefer_const_literals_to_create_immutables
      // actions: <Widget>[
      //   // FlatButton(
      //   //   onPressed: () => Navigator.pop(context),
      //   //   color: Colors.white,
      //   //   child: Image.asset("assets/images/not.PNG"),
      //   // ),
      //   Row(
      //     children: [Text("data")],
      //   )
      // ],
      // leading: SizedBox(
      //   height: 40,
      //   width: 40,
      //   child: FlatButton(
      //     onPressed: () => Navigator.pop(context),
      //     color: Colors.white,
      //     child: Image.asset("assets/images/not.PNG"),
      //   ),
      // ),
    );
  }
}

// class CustomAppBar extends PreferredSize{
//   @override
//   Size get preferredSize =>Size.fromHeight(AppBar().pre)
// }

class ProductDetailsarg {
  final Product product;

  // ignore: invalid_required_positional_param
  ProductDetailsarg({required this.product});
}
