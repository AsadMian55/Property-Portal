import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'deleteit.dart';
import 'navbar.dart';

class StarPageScreen extends StatelessWidget {
  const StarPageScreen({Key? key}) : super(key: key);

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
            icon: Icon(Icons.arrow_back, color: Colors.black)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 90, top: 150),
            child: Icon(
              color: Colors.grey,
              Icons.favorite,
              size: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Text("There is no Favourite in your list"),
          )
        ],
      ),
      floatingActionButtonLocation: floatingButtonPosition,
      floatingActionButton: CustomFloatingButton(),
      bottomNavigationBar: CustomNavbarWidget(),
    );
  }
}
