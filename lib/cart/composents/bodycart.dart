import 'package:ecommerce/home/composent/modele/Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// class BodyCart extends StatelessWidget {
//   const BodyCart({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       child: ListView.builder(
//           itemCount: testCart.length,
//           itemBuilder: (context, index) => Padding(
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 child: Dismissible(

//                     //ll direction de Dismissible
//                     direction: DismissDirection.endToStart,
//                     key: Key(testCart[0].product.id.toString()),
//                     background: Container(
//                       padding: EdgeInsets.symmetric(horizontal: 20),
//                       decoration: BoxDecoration(
//                           color: Color(0xFFFFE6E6),
//                           borderRadius: BorderRadius.circular(16)),
//                       child: Row(
//                         children: [
//                           Spacer(),
//                           SvgPicture.asset("assets/images/Trash.svg")
//                         ],
//                       ),
//                     ),
//                     child: CartItemProd(
//                       cart: testCart[index],
//                     )),
//               )),
//     );
//   }
// }

class BodyCart extends StatefulWidget {
  const BodyCart({Key? key}) : super(key: key);

  @override
  _BodyCartState createState() => _BodyCartState();
}

class _BodyCartState extends State<BodyCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
          itemCount: testCart.length,
          itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Dismissible(

                    //ll direction de Dismissible
                    direction: DismissDirection.endToStart,
                    key: Key(testCart[index].product.id.toString()),
                    background: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Color(0xFFFFE6E6),
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: [
                          Spacer(),
                          SvgPicture.asset("assets/images/Trash.svg")
                        ],
                      ),
                    ),
                    onDismissed: (direction) {
                      setState(() {
                        testCart.removeAt(index);
                      });
                    },
                    child: CartItemProd(
                      cart: testCart[index],
                    )),
              )),
    );
  }
}

class CartItemProd extends StatelessWidget {
  const CartItemProd({Key? key, required this.cart}) : super(key: key);
  final CartModel cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(TextSpan(
                text: "\$${cart.product.price}    ",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.orange),
                children: [
                  TextSpan(
                      text: "x${cart.Nbitems}",
                      style: TextStyle(color: Colors.black))
                ])),
          ],
        )
      ],
    );
  }
}
