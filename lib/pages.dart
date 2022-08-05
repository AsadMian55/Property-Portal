import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppp/frequetlyasked.dart';
import 'deleteit.dart';
import 'navbar.dart';

class PagesScreen extends StatelessWidget {
  const PagesScreen({Key? key}) : super(key: key);

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
        color: Colors.white,
        child: Column(children: [
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Get.to(() => FrequentlyAskedScreen());
            },
            child: Row(
              children: [
                Expanded(
                    flex: 10,
                    child: Text("    Frequently asked Questions",
                        style: TextStyle(fontSize: 22))),
                // Expanded(child: Container()),
                Expanded(
                    flex: 3,
                    child: Icon(
                      Icons.navigate_next,
                      size: 27,
                    ))
              ],
            ),
          ),
          SizedBox(height: 5),
          Divider(color: Colors.grey, height: 2),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    child:
                        Text("    Anti Scam", style: TextStyle(fontSize: 22)),
                  )),
              Expanded(child: Container()),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Icon(
                      Icons.navigate_next,
                      size: 27,
                    ),
                  ))
            ],
          ),
          SizedBox(height: 5),
          Divider(color: Colors.grey, height: 2),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Text("    Term & Conditions",
                        style: TextStyle(fontSize: 22)),
                  )),
              Expanded(child: Container()),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Icon(
                      Icons.navigate_next,
                      size: 27,
                    ),
                  ))
            ],
          ),
          SizedBox(height: 5),
          Divider(color: Colors.grey, height: 2),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Text("    Privacy", style: TextStyle(fontSize: 22)),
                  )),
              Expanded(child: Container()),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Icon(
                      Icons.navigate_next,
                      size: 27,
                    ),
                  ))
            ],
          ),
        ]),
      ),
      floatingActionButtonLocation: floatingButtonPosition,
      floatingActionButton: CustomFloatingButton(),
      bottomNavigationBar: CustomNavbarWidget(),
    );
  }
}
