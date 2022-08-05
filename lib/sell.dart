import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ppp/homepage.dart';

import 'colors.dart';
import 'navbar.dart';

class CreateAddSell extends StatelessWidget {
  const CreateAddSell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back, color: Colors.black)),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20),
        //color: Colors.grey,
        width: MediaQuery.of(context).size.width / 1.1,
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Text(
                  "Create Ad",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Create new advertisement",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Category",
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
                  "Ad Title",
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
                  "DESCRIPTION",
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
            Row(
              children: [
                Text(
                  "Price",
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
                  "Lcation",
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
                  "Ad Title",
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
                  "Contact Name",
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
                  "Email",
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
                  "Phone Number",
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
                  "Packages",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 5),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.black),
                color: Colors.grey.shade200,
              ),
              height: 50,
              child: Row(children: [Text("  Regular List")]),
            ),
            SizedBox(height: 5),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.black),
                color: Colors.grey.shade200,
              ),
              height: 50,
              child: Row(children: [
                Text("  Top page Ad - Upgrade"),
                SizedBox(width: MediaQuery.of(context).size.width / 3),
                Text(
                  "\$7.50",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ]),
            ),
            SizedBox(height: 5),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.black),
                color: Colors.grey.shade200,
              ),
              height: 50,
              child: Row(children: [
                Text("  Top page Ad - Upgrade"),
                SizedBox(width: MediaQuery.of(context).size.width / 3),
                Text(
                  "\$7.50",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ]),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Photo Gallery",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height / 7,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  border: Border.all(color: Colors.black, width: 1.5)),
              child: Icon(Icons.upload, size: 100, color: Colors.grey),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() => HomepageScreen());
              },
              child: Text(
                'Create Id',
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
          ]),
        ),
      ),
    );
  }
}
