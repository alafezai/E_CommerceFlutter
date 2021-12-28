import 'package:flutter/material.dart';

import 'composent/body.dart';

class HomeScrennn extends StatefulWidget {
  const HomeScrennn({Key? key}) : super(key: key);
  static String routeName = "/Home";
  @override
  _HomeScrennnState createState() => _HomeScrennnState();
}

class _HomeScrennnState extends State<HomeScrennn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   static String routeName = "/Home";

//   const HomeScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // ignore: prefer_const_constructors
//     return Scaffold(
//       const Body(),
//     );
//   }
//}
