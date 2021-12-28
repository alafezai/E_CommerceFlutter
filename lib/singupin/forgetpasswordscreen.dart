// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class forgetPASSS extends StatefulWidget {
  const forgetPASSS({Key? key}) : super(key: key);
  static String routeName = "/forgetPassword";
  @override
  _forgetPASSSState createState() => _forgetPASSSState();
}

class _forgetPASSSState extends State<forgetPASSS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // ignore: prefer_const_constructors
            title: Center(
                child: const Text("Forget Password",
                    style: TextStyle(fontSize: 20, color: Color(0XFF88888b))))),

        //flexibility mte3 screen au couurs ecriture dans les champs iput
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Text(
                "Please entrer your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 130),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Entrer your Email",
                    // suffixIcon:SvgPicture.asset("assets/images/Mail.svg"),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        gapPadding: 10),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        gapPadding: 10),
                  ),
                ),
              ),

//Button send code to mail
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.orange,
                      onPressed: () {},
                      child: Text(
                        "Send link",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
