import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'colors.dart';
import 'homepage.dart';
import 'navbar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Get.to(() => HomepageScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Container(
            color: primaryColorGreen,
            child: Center(
              child: Text(
                "Lara Classified",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            )
            // Image.asset(
            //   "assets/images/splashscreenimage.jpg",
            // ),
            ),
      ),
    );
  }
}
