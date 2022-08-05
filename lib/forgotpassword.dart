import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppp/signin.dart';

import 'colors.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: primaryColorGreen, elevation: 0),
      body: Stack(children: [
        Positioned(
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned(
          child: Container(
            color: primaryColorGreen,
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned(
          left: 30,
          top: 50,
          child: Text(
            "Forgot Password",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 33),
          ),
        ),
        Positioned(
          top: 100,
          left: 30,
          child: Text(
            "Enter your email below to reset your Password",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 2),
                  blurRadius: 2,
                  spreadRadius: 3)
            ]),
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width / 1.2,
            child: Column(children: [
              SizedBox(height: 25),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.alternate_email),
                          hintText: '     Email Address')),
                ),
              ),
              SizedBox(height: 0),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    //Get.to(() => HomepageScreen());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,

                    color: SecondaryColorYellow,
                    //height: 20,
                    child: Row(children: [
                      Text(
                        "       Send",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Flexible(
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width / 1.7)),
                      Icon(Icons.arrow_forward)
                    ]),
                  ),
                ),
              )
            ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 1.5,
              left: MediaQuery.of(context).size.width / 3.5),
          child: Text(
            "Dont Have Account yet?",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 1.49,
              left: MediaQuery.of(context).size.width / 2.8),
          child: TextButton(
              onPressed: () {
                Get.to(() => SignInScreen());
              },
              child: Text(
                "  Login",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
        )
      ]),
    );
  }
}
