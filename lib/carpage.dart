import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppp/deleteit.dart';
import 'package:ppp/viewall.dart';
import 'navbar.dart';

// ignore: must_be_immutable
class CarPage extends StatelessWidget {
  bool? isCarPage;
  CarPage({Key? key, this.isCarPage}) : super(key: key);

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
            icon: const Icon(Icons.arrow_back_outlined, color: Colors.black)),
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Get.to(() => const ViewAllScreen());
            },
            child: Row(
              children: [
                const Expanded(
                    flex: 2,
                    child: Text("    Cars", style: TextStyle(fontSize: 22))),
                Expanded(child: Container()),
                const Expanded(
                    flex: 1,
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
                    child: Text("    Buses \& Minibus",
                        style: TextStyle(fontSize: 22)),
                  )),
              Expanded(child: Container()),
              Expanded(
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
                    child: Text("    Heavy Equipment",
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
                  flex: 5,
                  child: Text("    Motorcycle \& Scooters",
                      style: TextStyle(fontSize: 22))),
              Expanded(child: Container()),
              Expanded(
                  flex: 2,
                  child: Icon(
                    Icons.navigate_next,
                    size: 27,
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
                    child: Text("    Truck & Trailer",
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
                    child: Text("    Parts & Accessory",
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
                    child: Text("    Boat & WaterCraft",
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
        ]),
      ),
      floatingActionButtonLocation: floatingButtonPosition,
      floatingActionButton: CustomFloatingButton(),
      bottomNavigationBar: CustomNavbarWidget(),
    );
  }
}
