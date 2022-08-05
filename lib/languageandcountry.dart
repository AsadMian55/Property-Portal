import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppp/homepage.dart';

import 'colors.dart';
import 'deleteit.dart';
import 'navbar.dart';

class LanguageAndCountryScreen extends StatelessWidget {
  const LanguageAndCountryScreen({Key? key}) : super(key: key);

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
                      Text('     Settings',
                          style: TextStyle(color: Colors.white, fontSize: 26)),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('          Change tour Language and Country',
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: [
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: 30),
              Text(
                ' Country',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 5),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5)),
            child:
                TextField(decoration: InputDecoration(hintText: '  Pakistan')),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 30),
              Text(
                ' Language',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 5),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5)),
            child:
                TextField(decoration: InputDecoration(hintText: '  English')),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.to(() => HomepageScreen());
            },
            child: Text(
              'Save',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
                primary: SecondaryColorYellow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minimumSize: Size(MediaQuery.of(context).size.width / 1.2,
                    MediaQuery.of(context).size.height / 18)),
          ),
        ]),
      ),
      floatingActionButtonLocation: floatingButtonPosition,
      floatingActionButton: CustomFloatingButton(),
      bottomNavigationBar: CustomNavbarWidget(),
    );
  }
}
