import 'package:ecommerce/home/composent/modele/user.dart';
import 'package:ecommerce/singupin/singin.dart';
import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({Key? key}) : super(key: key);

  @override
  _SingupScreenState createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  var fullnamecont = TextEditingController();
  var emailcontrolleur = TextEditingController();
  var passwordcontrolleur = TextEditingController();
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: TextFormField(
                  controller: fullnamecont,
                  validator: (ValueKey) {
                    if (ValueKey!.isEmpty) {
                      return "Please Entrer your Full name";
                    }
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: "Full name",
                    hintText: "Entrer your Full name",
                    // suffixIcon:SvgPicture.asset("assets/images/Mail.svg"),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 20),
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
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: TextFormField(
                    controller: emailcontrolleur,
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
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 45, vertical: 20),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: TextFormField(
                  controller: passwordcontrolleur,
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
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 20),
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

//Button Continue
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.orange,
                      onPressed: () {
                        if (fullnamecont.text.isNotEmpty &&
                            emailcontrolleur.text.isNotEmpty &&
                            passwordcontrolleur.text.isNotEmpty) {
                          User u = User(
                              email: emailcontrolleur.text,
                              password: passwordcontrolleur.text,
                              fullname: fullnamecont.text);
                          users.add(u);

                          //Alert success
                          CoolAlert.show(
                              context: context,
                              type: CoolAlertType.success,
                              text: "sign in successful",
                              confirmBtnColor: Colors.orange,
                              onConfirmBtnTap: () {
                                Navigator.pushNamed(
                                    context, SinginScreen.routeName);
                              });
                        } else {
                          CoolAlert.show(
                            context: context,
                            type: CoolAlertType.error,
                            text: "Try again ,Semthing worng !!",
                            confirmBtnColor: Colors.orange,
                          );
                        }
                      },
                      // Navigator.pushNamed(context, HomeScrennn.routeName),
                      child: const Text(
                        "Sing up",
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
                  SocialMedia(src: "assets/images/fac.PNG"),
                  Spacer(),
                  SocialMedia(src: "assets/images/twt.PNG"),
                  Spacer()
                ],
              ),
              const SizedBox(
                height: 20,
              )
//Sing up Router
              ,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
// ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Sing in",
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

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key, required this.src}) : super(key: key);
  final String src;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
          color: const Color(0xFFF5F6F9), shape: BoxShape.circle),
      child: Image.asset(src),
    );
  }
}

class Singup extends StatelessWidget {
  const Singup({Key? key}) : super(key: key);
  static String routeName = "/singup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child:
                  Text('Sing Up', style: TextStyle(color: Color(0XFF88888b)))),
        ),

        //flexibility mte3 screen au couurs ecriture dans les champs iput
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Sing up Now  ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Create your account Now in TOKOTO\n or continue with social media",
                textAlign: TextAlign.center,
              ),
              const SingupScreen(),
            ],
          ),
        ));
  }
}
