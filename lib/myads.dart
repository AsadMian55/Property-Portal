import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';
import 'deleteit.dart';
import 'navbar.dart';
import 'sell.dart';

class MyAddsScreen extends StatelessWidget {
  const MyAddsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.black,
              )),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(() => CreateAddSell());
              },
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 20)
          ]),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                center: false,
                contentPadding: EdgeInsets.all(20),
                height: 55,
                buttonMargin: EdgeInsets.only(right: 50, left: 0),
                backgroundColor: primaryColorGreen,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: "My Adds",
                  ),
                  Tab(
                    text: "Another Adds",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 40,
                              ),
                              Text(" My Adds",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                  "  Manage your free and premium advertisement",
                                  style: TextStyle(
                                    fontSize: 12,
                                  )),
                            ],
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 4.5),
                          Icon(Icons.image_outlined,
                              size: 90, color: Colors.grey),
                          Text("There is no Add")
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.image_outlined,
                              size: 90, color: Colors.grey),
                          Text("There is no Add")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: floatingButtonPosition,
      floatingActionButton: CustomFloatingButton(),
      bottomNavigationBar: CustomNavbarWidget(),
    );
  }
}
