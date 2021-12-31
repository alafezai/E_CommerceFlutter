// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:ecommerce/home/composent/ProductDetailBody.dart';
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
        backgroundColor: Color(0xFFF5F6F9),
        appBar: AppBar(
            title: Align(
                child: Padding(
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.only(left: 270),
                  child: Row(
                    children: [
                      Text(args.product.rating.toString(),
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20)),
                      SvgPicture.asset("assets/images/Star Icon.svg"),
                    ],
                  ),
                ),
                alignment: Alignment.center)),
        body: Column(
          children: [
            ProductDetailsBody(
              product: args.product,
            ),
            DetailsName(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      args.product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      width: 64,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFE6E6),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: SvgPicture.asset(
                        "assets/images/Heart Icon_2.svg",
                        color: Color(0xFFFF4848),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 64),
                    child: Text(
                      args.product.description,
                      maxLines: 3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "See More Details",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: FlatButton(
                padding: EdgeInsets.all(15),
                minWidth: 330,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.orange,
                onPressed: () {
                  //    Navigator.pushNamed(context, SinginScreen.routeName);
                },
                child: Text(
                  "Add to Chart",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )
          ],
        )

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

class DetailsName extends StatelessWidget {
  const DetailsName({Key? key, required this.color, required this.child})
      : super(key: key);
  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius:
      ),
      child: child,
    );
  }
}
