import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppp/homepage.dart';
import 'package:ppp/messagepage.dart';
import 'package:ppp/profilepage.dart';
import 'package:ppp/starpage.dart';
import 'colors.dart';

class CustomNavbarWidget extends StatefulWidget {
  const CustomNavbarWidget({Key? key}) : super(key: key);
  @override
  State<CustomNavbarWidget> createState() => _CustomNavbarWidgetState();
}

class _CustomNavbarWidgetState extends State<CustomNavbarWidget> {
  int _currentTabIndex = 0;
  void navBarFunction() {
    if (_currentTabIndex == 0) {
      Get.offAll(() => HomepageScreen());
    } else if (_currentTabIndex == 1) {
      //Get.offAll(StarPageScreen());
      //Get.off(StarPageScreen());
      Get.to(() => const StarPageScreen());
    } else if (_currentTabIndex == 2) {
      Get.to(() => MessagePageScreen());
    } else if (_currentTabIndex == 3) {
      Get.to(() => ProfileScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
          navBarFunction();
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(right: 40),
            child: Icon(Icons.star, size: 30),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(left: 40),
            child: Icon(Icons.message, size: 30),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, size: 30, color: primaryColorGreen),
          label: "",
        ),
      ],
    );
  }
}
