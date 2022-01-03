import 'package:flutter/material.dart';

class ProductHome {
  final String image, title, description;
  final int size, id;
  final Color color;
  final double rating, price;
  ProductHome({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
    required this.rating,
  });
}

List<ProductHome> productssssssssssss = [
  ProductHome(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color.fromARGB(255, 126, 201, 248),
      rating: 3.3),
  ProductHome(
      id: 2,
      title: "Wireless Controller for PS4™",
      price: 64.99,
      size: 12,
      description: description,
      image: "assets/images/Image Popular Product 2.png",
      color: Color.fromARGB(255, 247, 247, 178),
      rating: 4.1),
  ProductHome(
      id: 3,
      title: "Nike Sport White - Man Pant",
      price: 50.5,
      size: 12,
      description: description,
      image: "assets/images/ps4_console_white_1.png",
      color: Color.fromARGB(255, 120, 190, 236),
      rating: 6.7),
  ProductHome(
      id: 4,
      title: "Belt Bag",
      price: 200,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984),
      rating: 7.4),
  ProductHome(
      id: 5,
      title: "Hang Top",
      price: 187.99,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493),
      rating: 5.9),
  ProductHome(
      id: 6,
      title: "Gloves XC Omega - Polygon",
      price: 36.55,
      size: 12,
      description: description,
      image: "assets/images/glap.png",
      color: Color.fromARGB(255, 140, 142, 143),
      rating: 4.1),
  ProductHome(
      id: 7,
      title: "Old Fashion",
      price: 100,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398),
      rating: 9.1),
  ProductHome(
      id: 8,
      title: "Office Code",
      price: 500,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883),
      rating: 5.3),
  ProductHome(
      id: 9,
      title: "Office Code",
      price: 345,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: Color(0xFFAEAEAE),
      rating: 6.7),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";





// Future<List> getflights() async {
//      try{
//        print("api works");
//         var res =await http.get(Uri.parse('http://192.168.1.16:3000/api/getFlights'));
//         var decodedData=jsonDecode(res.body);
//         // print(decodedData);
//         // print("eearz");
//         return decodedData;
//      }catch(SocketException){
//        return Future.error("api not works");
//      }
//   }
  