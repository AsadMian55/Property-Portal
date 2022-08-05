import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'colors.dart';
import 'deleteit.dart';
import 'homepage.dart';
import 'navbar.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: primaryColorGreen,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            bottom: PreferredSize(
                child: Column(children: [
                  Row(
                    children: [
                      Text('     Contact',
                          style: TextStyle(color: Colors.white, fontSize: 26)),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('          Please fill up the form',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  )
                ]),
                preferredSize: Size(100, 150)),
          ),
          preferredSize: Size.fromHeight(150)),
      body: SingleChildScrollView(
        child: Container(
            // height: MediaQuery.of(context).size.height * 1.0,
            width: MediaQuery.of(context).size.width / 1.1,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "First Name",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Last Name",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Company Name",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Email Address",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Comments",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextFormField(
                    maxLines: 6,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => HomepageScreen());
                  },
                  child: Text(
                    'Send',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: SecondaryColorYellow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(MediaQuery.of(context).size.width / 1.1,
                          MediaQuery.of(context).size.height / 15)),
                ),
                SizedBox(height: 20),
              ],
            )),
      ),
      floatingActionButtonLocation: floatingButtonPosition,
      floatingActionButton: CustomFloatingButton(),
      bottomNavigationBar: CustomNavbarWidget(),
    );
  }
}
