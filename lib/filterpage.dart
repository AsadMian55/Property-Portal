import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppp/navbar.dart';

import 'colors.dart';
import 'viewall.dart';

class FilterResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ))),
      body: Container(
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("   Filter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "      Search an exact result what are you looking for",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("    Ad Title", style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("    Category", style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("    City", style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("    Price", style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => ViewAllScreen());
                  },
                  child: Text(
                    'Apply Filter',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: SecondaryColorYellow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(MediaQuery.of(context).size.width / 1.1,
                          MediaQuery.of(context).size.height / 15)),
                ),
              ],
            ),
          )),
    );
  }
}
