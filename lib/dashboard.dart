import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppp/profilepage.dart';
import 'package:ppp/starpage.dart';

import 'colors.dart';
import 'deleteit.dart';
import 'messagepage.dart';
import 'myads.dart';
import 'navbar.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              height: MediaQuery.of(context).size.height),
          Positioned(
            top: 80,
            child: Container(
                width: MediaQuery.of(context).size.width,
                color: primaryColorGreen,
                height: MediaQuery.of(context).size.height / 2.9,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        Icon(
                          Icons.account_circle_outlined,
                          size: 100,
                          color: Colors.white,
                        ),
                        Text(
                          "   Hi User!",
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        )
                      ],
                    ),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 4,
                left: 40,
                right: 40),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 1)
              ], color: Colors.white, borderRadius: BorderRadius.circular(12)),
              height: MediaQuery.of(context).size.height / 4.459,
              child: Column(children: [
                Expanded(
                  child: Row(children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => MyAddsScreen());
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.5)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.screen_search_desktop_outlined),
                                Text('My Adds')
                              ]),
                          //color: Colors.red,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => MessagePageScreen());
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.5)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.mail_outline),
                                Text('Messages')
                              ]),
                          //color: Colors.red,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => ProfileScreen());
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.5)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.edit_note_outlined),
                                Text('Profile')
                              ]),
                          //color: Colors.red,
                        ),
                      ),
                    )
                  ]),
                ),
                Expanded(
                  child: Row(children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => StarPageScreen());
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.5)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.bookmark_outline),
                                Text('Bookmarks')
                              ]),
                          //color: Colors.red,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          // height: 100,
                          // width: 100,
                          // decoration: BoxDecoration(
                          //     border: Border.all(color: Colors.grey, width: 0.5)),
                          // child: Column(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       Icon(Icons.screen_search_desktop_outlined),
                          //       Text('My Adds')
                          //     ]),
                          // //color: Colors.red,
                          ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 100,
                        //color: Colors.yellow,
                      ),
                    )
                  ]),
                ),
              ]),
              //width: MediaQuery.of(context).size.height / 2,
            ),
          )
        ],
      ),
      floatingActionButtonLocation: floatingButtonPosition,
      floatingActionButton: CustomFloatingButton(),
      bottomNavigationBar: CustomNavbarWidget(),
    );
  }
}
