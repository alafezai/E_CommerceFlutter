// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/home/composent/modele/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
//**********************header Section (panier , notifaction ,search)
            Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                          onChanged: (value) => {
                                //serch value
                              },
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Search Product",
                              prefixIcon:
                                  // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
                                  SizedBox(
                                width: 1,
                                height: 5,
                                child: SvgPicture.asset(
                                    "assets/images/Search Icon.svg",
                                    fit: BoxFit.none),
                              ))),
                    ),
                    Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset("assets/images/Cart Icon.svg",
                          fit: BoxFit.none),
                    ),
                    Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset("assets/images/Bell.svg",
                          fit: BoxFit.none),
                    )
                  ],
                )),

            SizedBox(
              height: 30,
            ),
//***********************************Promo section */
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              width: double.infinity,
              //height: 90,
              decoration: BoxDecoration(
                  color: Color(0xFF4A3298),
                  borderRadius: BorderRadius.circular(20)),
              child: Text.rich(TextSpan(
                  text: "A summer Surprise\n",
                  style: TextStyle(color: Colors.white),
                  children: const [
                    TextSpan(
                        text: "Cashback 20%",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold))
                  ])),
            ),

//****************************Catigorie */
            Categorie(),
//******************Diplay Product */
            Title(),
            // ignore: prefer_const_literals_to_create_immutables
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(demoProducts.length,
                      (index) => Productcard(product: demoProducts[index]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class Categorie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/images/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/images/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/images/Game Icon.svg", "text": "Game"},
      {"icon": "assets/images/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/images/Discover.svg", "text": "More"},
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CardCategirie(
                    image: categories[index]["icon"],
                    titleCategirie: categories[index]["text"],
                    press: () => {},
                  ))
        ],
      ),
    );
  }
}

class CardCategirie extends StatelessWidget {
  const CardCategirie(
      {Key? key,
      required this.image,
      required this.titleCategirie,
      required this.press})
      : super(key: key);

  final String image;
  final String titleCategirie;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
          width: 55,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(image, fit: BoxFit.none),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                titleCategirie,
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_literals_to_create_immutables
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Product",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () => {},
            child: Text("See More"),
          )
        ]),
      ),
    );
  }
}

class Productcard extends StatelessWidget {
  const Productcard({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20),
        child: SizedBox(
            width: 140,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.02,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(product.images[0]),
                  ),
                ),
                Text(
                  product.title,
                  style: TextStyle(color: Colors.black),
                  maxLines: 2,
                ),
                Text(
                  "${demoProducts[0].price}",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                )
              ],
            )));
  }
}
