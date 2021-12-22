import 'package:ecommerce/control/login_api.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';


class ForgotPassword extends StatefulWidget {
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late String mail;

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
                  "Forgot password",
                  style: TextStyle(
                      fontSize: FontXLarge,
                      fontWeight: FontWeight.bold,
                      color: White),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text("Enter your mail address, You will receive a link to create a new password via email", style: TextStyle(color: White)),
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
                          mail = text;
                          // do something with text
                        },
                      ),
                    ),
                  ])),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Primary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        // side: BorderSide(color: Primary)
                      ))),
                  child: const Text(
                    "SEND MAIL",
                    style: TextStyle(color: White, fontSize: FontButtons),
                  ),
                  onPressed: () {
                    GetUsersLogin.getForgotpasswordData(mail);
                    //--------------------------
                  },
                ),
              ),
            ])));
  }
}
