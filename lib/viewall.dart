import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppp/navbar.dart';
import 'package:ppp/singleaddview.dart';

import 'filterpage.dart';
import 'homepage.dart';

class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back, color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Icon(
            Icons.view_headline_outlined,
            color: Colors.black,
            size: 32,
          ),
          SizedBox(width: 25)
        ],
        title: Container(
          width: MediaQuery.of(context).size.width / 1.7,
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                    child: SizedBox(
                  width: 35,
                )),
                ViewAllItemList(),
                Flexible(
                  child: SizedBox(
                    width: 15,
                  ),
                ),
                ViewAllItemList(),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                    child: SizedBox(
                  width: 35,
                )),
                ViewAllItemList(),
                Flexible(
                  child: SizedBox(
                    width: 15,
                  ),
                ),
                ViewAllItemList(),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                    child: SizedBox(
                  width: 35,
                )),
                ViewAllItemList(),
                Flexible(
                  child: SizedBox(
                    width: 15,
                  ),
                ),
                ViewAllItemList(),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                    child: SizedBox(
                  width: 35,
                )),
                ViewAllItemList(),
                Flexible(
                  child: SizedBox(
                    width: 15,
                  ),
                ),
                ViewAllItemList(),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                    child: SizedBox(
                  width: 35,
                )),
                ViewAllItemList(),
                Flexible(
                  child: SizedBox(
                    width: 15,
                  ),
                ),
                ViewAllItemList(),
              ],
            ),
            SizedBox(height: 20),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: Row(children: [
          Expanded(
              child: Container(
            height: 60,
            color: Colors.grey.shade200,
            child: TextButton.icon(
                onPressed: () => showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: const Text('Sort By'),
                        children: <Widget>[
                          SimpleDialogOption(
                            child: const Text('Price : Low to High'),
                          ),
                          SimpleDialogOption(
                            child: const Text('Price : High to Low'),
                          ),
                          SimpleDialogOption(
                            child: const Text('Relevance'),
                          ),
                          SimpleDialogOption(
                            child: Text('Date'),
                          )
                        ],
                      );
                    }),
                icon: Icon(Icons.sort_outlined, color: Colors.black),
                label: Text(
                  "Sort by",
                  style: TextStyle(color: Colors.black),
                )),
          )),
          Expanded(
              child: Container(
            height: 60,
            color: Colors.grey.shade200,
            child: TextButton.icon(
                onPressed: () {
                  Get.to(() => FilterResultScreen());
                },
                icon: Icon(Icons.filter_alt_outlined, color: Colors.black),
                label: Text(
                  "Filter",
                  style: TextStyle(color: Colors.black),
                )),
          )),
        ]),
      ),
    );
  }
}

class ViewAllItemList extends StatelessWidget {
  const ViewAllItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => SingleAddView());
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 2),
              ),
            ],
            borderRadius: BorderRadius.circular(10)),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 4,
        child: Column(children: [
          Expanded(
            flex: 3,
            child: Container(
              //width: 100,
              //color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.grey,
                  size: 80,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(right: 50, left: 20, bottom: 20),
              child: Container(
                width: double.infinity,
                //color: Colors.green,
                child: Column(children: [
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        " Camera",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 2,
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Icon(Icons.access_time_outlined,
                          size: 15, color: Colors.grey),
                      Text(" month ago"),
                    ],
                  )),
                  SizedBox(
                    height: 2,
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Icon(Icons.location_on, size: 15, color: Colors.grey),
                      Text(" Dubai"),
                    ],
                  )),
                  SizedBox(
                    height: 2,
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Text(
                        " \$ 99.9",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
                ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
