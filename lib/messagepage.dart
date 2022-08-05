import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:get/get.dart';
import 'colors.dart';
import 'deleteit.dart';
import 'navbar.dart';

class MessagePageScreen extends StatefulWidget {
  @override
  State<MessagePageScreen> createState() => _MessagePageScreenState();
}

class _MessagePageScreenState extends State<MessagePageScreen> {
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
              ))),
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                contentPadding: EdgeInsets.all(20),
                height: 60,
                buttonMargin: EdgeInsets.only(right: 8, left: 8),
                backgroundColor: primaryColorGreen,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: "Inbox",
                  ),
                  Tab(
                    text: "Unread",
                  ),
                  Tab(
                    text: "Starred",
                  ),
                  Tab(
                    text: "Important",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message, size: 90, color: Colors.grey),
                          Text("There is no message")
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message, size: 90, color: Colors.grey),
                          Text("There is no message")
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message, size: 90, color: Colors.grey),
                          Text("There is no message")
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message, size: 90, color: Colors.grey),
                          Text("There is no message")
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
