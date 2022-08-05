import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';
import 'deleteit.dart';
import 'navbar.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isShow = false;
  bool _isShow2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(280.0), // here the desired height
          child: AppBar(
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back)),
              backgroundColor: primaryColorGreen,
              bottom: PreferredSize(
                  child: Icon(Icons.account_circle_outlined,
                      size: 150, color: Colors.white),
                  preferredSize: Size(0, 0)))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Divider(color: Colors.black),
            Container(
              margin: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width / 1.3,
              // color: Colors.grey.shade200,
              child: Row(
                children: [
                  Flexible(child: Text("  Manage Profile")),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.55,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(
                          () {
                            _isShow = !_isShow;
                          },
                        );
                      },
                      icon: _isShow == true
                          ? Icon(Icons.arrow_drop_down)
                          : Icon(Icons.navigate_next_outlined))
                ],
              ),
            ),
            Visibility(
              visible: _isShow,
              child: Column(children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Name',
                        suffixIcon: Icon(Icons.person),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'UserName',
                        suffixIcon: Icon(Icons.alternate_email),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        suffixIcon: Icon(Icons.email),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Phone',
                        suffixIcon: Icon(Icons.phone),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: SecondaryColorYellow,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: Size(
                            MediaQuery.of(context).size.width / 1.3,
                            MediaQuery.of(context).size.height / 15)),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(color: Colors.black),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width / 1.3,
              //color: Colors.grey.shade200,
              child: Row(
                children: [
                  Flexible(child: Text("  Change Password")),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.9,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(
                          () {
                            _isShow2 = !_isShow2;
                          },
                        );
                      },
                      icon: _isShow2 == true
                          ? Icon(Icons.arrow_drop_down)
                          : Icon(Icons.navigate_next_outlined))
                ],
              ),
            ),
            Visibility(
              visible: _isShow2,
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        suffixIcon: Icon(Icons.password),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Confirm New Passwor',
                        suffixIcon: Icon(Icons.password),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: SecondaryColorYellow,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: Size(
                            MediaQuery.of(context).size.width / 1.3,
                            MediaQuery.of(context).size.height / 15)),
                  ),
                ),
                SizedBox(height: 30)
              ]),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: floatingButtonPosition,
      floatingActionButton: CustomFloatingButton(),
      bottomNavigationBar: CustomNavbarWidget(),
    );
  }
}
