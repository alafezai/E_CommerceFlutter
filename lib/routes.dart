import 'package:ecommerce/home/composent/body.dart';
import 'package:ecommerce/home/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerce/singupin/forgetpasswordscreen.dart';
import 'package:ecommerce/singupin/singin.dart';

final Map<String, WidgetBuilder> routes = {
// ignore: prefer_const_constructors
  SinginScreen.routeName: (context) => SinginScreen(),
// ignore: prefer_const_constructors
  forgetPASSS.routeName: (context) => forgetPASSS(),
  // ignore: prefer_const_constructors
  HomeScrennn.routeName: (context) => HomeScrennn(),
};
