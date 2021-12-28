// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:ecommerce/home/composent/body.dart';
import 'package:ecommerce/home/homeScreen.dart';
import 'package:ecommerce/singupin/forgetpasswordscreen.dart';
import 'package:flutter/material.dart';

class forminpu extends StatefulWidget {
  const forminpu({Key? key}) : super(key: key);

  @override
  _forminpuState createState() => _forminpuState();
}

class _forminpuState extends State<forminpu> {
// ignore: unused_field
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  bool rember = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: _formkey,
          child: Column(
            children: [
//Email Field***************************
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    // ignore: avoid_types_as_parameter_names
                    validator: (ValueKey) {
                      if (ValueKey!.isEmpty) {
                        String err = "Please entrer your email";
                        return err;
                        // ignore: dead_code
                        errors.add(err);
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Entrer your email",
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
                  )),

//Password Filed ************************
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: TextFormField(
                  validator: (ValueKey) {
                    if (ValueKey!.isEmpty) {
                      return "Please Entrer your password";
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Entrer your Password",
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
//ERRORS lIST

              valider(),

//Remember Checkbox and forget password Router

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Checkbox(
                      value: rember,
                      activeColor: Colors.orange,
                      onChanged: (ValueKey) {
                        setState(() {
                          rember = ValueKey!;
                        });
                      },
                    ),
                    Text("Remember me"),
                    Spacer()
                    // Text("Forget Password",style: TextStyle(decoration: TextDecoration.underline),)
                    ,
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, forgetPASSS.routeName);
                      },
                      child: Text("Forget Password"),
                    )
                  ],
                ),
              ),
//Button Continue
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
                      onPressed: () =>
                          Navigator.pushNamed(context, HomeScrennn.routeName),
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    )),
              )
//Social Media Icon
              ,
// ignore: prefer_const_literals_to_create_immutables
              Row(
                children: const [
                  Spacer(),
                  //:::::::::::::::::::::::::::::::::::::::::::::BADEL SRC KOL AND DONE !!!

                  SocialMedia(src: "assets/images/gmail.PNG"),
                  Spacer(),
                  SocialMedia(src: "assets/images/gmail.PNG"),
                  Spacer(),
                  SocialMedia(src: "assets/images/gmail.PNG"),
                  Spacer()
                ],
              ),
              SizedBox(
                height: 20,
              )
//Sing up Router
              ,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
// ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Dont't have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Sing up",
                    style: TextStyle(fontSize: 16, color: Colors.orange),
                  )
                ],
              )
            ],
          )),
    );
  }

  Row ErrorForm({required String error}) {
    return Row(
      children: [Text(error)],
    );
  }

  Column valider() {
    return Column(
        children: List.generate(
            errors.length, (index) => ErrorForm(error: errors[index])));
  }
}

class SinginScreen extends StatelessWidget {
  const SinginScreen({Key? key}) : super(key: key);
  static String routeName = "/singin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child:
                  Text('Sing in', style: TextStyle(color: Color(0XFF88888b)))),
        ),

        //flexibility mte3 screen au couurs ecriture dans les champs iput
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Welcome back",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Sing in with your email and password \n or continue with social media",
                textAlign: TextAlign.center,
              ),
              forminpu(),
            ],
          ),
        ));
  }
}

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key, required this.src}) : super(key: key);
  final String src;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: 40,
      width: 40,
      decoration:
          BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
      child: Image.asset(src),
    );
  }
}
