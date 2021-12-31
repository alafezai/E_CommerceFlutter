import 'package:ecommerce/home/composent/modele/Product.dart';
import 'package:flutter/material.dart';

// class ProductDetailsBody extends StatelessWidget {
//   const ProductDetailsBody({Key? key, required this.product}) : super(key: key);
//   final Product product;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           width: 238,
//           child: AspectRatio(
//             aspectRatio: 1,
//             child: Image.asset(product.images[0]),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               padding: EdgeInsets.all(8),
//               height: 48,
//               width: 48,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: Colors.orange)),
//               child: Image.asset(product.images[0]),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }

class ProductDetailsBody extends StatefulWidget {
  const ProductDetailsBody({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  _ProductDetailsBodyState createState() => _ProductDetailsBodyState();
}

class _ProductDetailsBodyState extends State<ProductDetailsBody> {
  int SelectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 238,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[SelectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                widget.product.images.length, (index) => ImageProd(index))
          ],
        )
      ],
    );
  }

  GestureDetector ImageProd(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          SelectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: SelectedImage == index
                    ? Colors.orange
                    : Colors.transparent)),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
