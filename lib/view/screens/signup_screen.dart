import 'package:ecommerce/control/register_api.dart';
import 'package:ecommerce/view/screens/login_screen.dart';

import '../../constant.dart';

import 'package:flutter/material.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late String email, password, name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Background,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            color: White,
            onPressed: () {
              //-------------------------------------------------------------
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
              //
              // }));
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    "SignUp",
                    style: TextStyle(
                        fontSize: FontXLarge,
                        fontWeight: FontWeight.bold,
                        color: White),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    color: Dark,
                    child: Column(children: [
                      ListTile(
                        // padding: EdgeInsets.symmetric(horizontal: 8.0),
                        title: TextField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              labelText: "Enter your name",
                              labelStyle: TextStyle(color: Gray),
                              border: InputBorder.none),
                          onChanged: (text) {
                            setState(() {
                              name = text;
                            });
                            // do something with text
                          },
                        ),
                      ),
                    ])),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    color: Dark,
                    child: Column(children: [
                      ListTile(
                        // padding: EdgeInsets.symmetric(horizontal: 8.0),
                        title: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              labelText: "Enter your email",
                              labelStyle: TextStyle(color: Gray),
                              border: InputBorder.none),
                          onChanged: (text) {
                            setState(() {
                              email = text;
                            });
                            // do something with text
                          },
                        ),
                      ),
                    ])),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    color: Dark,
                    child: Column(children: [
                      ListTile(
                        // padding: EdgeInsets.symmetric(horizontal: 8.0),
                        title: TextField(
                          obscureText: true,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                              labelText: "Enter your password",
                              labelStyle: TextStyle(
                                color: Gray,
                              ),
                              border: InputBorder.none),
                          onChanged: (text) {
                            password = text;
                            // do something with text
                          },
                        ),
                      ),
                    ])),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return LoginScreen();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text("Already have an account?",
                              style: TextStyle(color: White)),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Primary,
                          )
                        ]),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Primary),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          // side: BorderSide(color: Primary)
                        ))),
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(color: White, fontSize: FontButtons),
                    ),
                    onPressed: () {
                      GetUsersRegister.getRegisterData(name, email, password);

                      //--------------------------
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  child: const Text(
                    "Or Signup using google account",
                    style: TextStyle(
                        color: White,
                        fontSize: FontButtons,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 70,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 3,
                  child: FloatingActionButton(
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(10.0)), // <-- Radius
                    ),
                    backgroundColor: White,
                    autofocus: true,
                    onPressed: () {
                      //------------------------
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        "assets/images/google.png",
                      ),
                    ),
                  ),
                )
              ]),
        ));
  }
}
