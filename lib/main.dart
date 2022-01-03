// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/singupin/singin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // ignore: deprecated_member_use
        appBarTheme: AppBarTheme(
          color: Colors.white, elevation: 0,
          // ignore: deprecated_member_use
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          // ignore: deprecated_member_use
        ),

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int curntPage = 0;
  List<Map<String, String>> itemsplash = [
    {
      "text": "Welcome to TOKOTO , Let's shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store\naround UNITED State of america ",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop \nJust stay at home with TOKOTO",
      "image": "assets/images/splash_3.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 80.0, horizontal: .0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              height: 460,
              child: Expanded(
                flex: 3,
                child: PageView.builder(
                  itemCount: itemsplash.length,
                  onPageChanged: (ValueKey) {
                    setState(() {
                      curntPage = ValueKey;
                    });
                  },
                  itemBuilder: (context, index) => SplashContant(
                      text: itemsplash[index]['text'],
                      image: itemsplash[index]["image"]),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        itemsplash.length, (index) => todoLis(index: index)),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.orange,
                  onPressed: () {
                    Navigator.pushNamed(context, SinginScreen.routeName);
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Container todoLis({required int index}) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 5,
      width: curntPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: curntPage == index ? Colors.orange : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}

class SplashContant extends StatelessWidget {
  const SplashContant({Key? key, required this.text, required this.image})
      : super(key: key);
  final String? text, image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Center(
            child: Text(
              "TOKOTO",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ),
          Text(
            // ignore: unnecessary_this
            text!,
            // ignore: prefer_const_constructors
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Image.asset(
            image!,
            width: 700,
            height: 300,
          )
        ],
      ),
    );
  }
}

void printaaaa() {
  print('aaaa');
}




//social media statWIDG


