/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart';
import 'homepage.dart';
import 'messagepage.dart';
import 'profilepage.dart';
import 'sell.dart';
import 'starpage.dart';

class Navbar extends StatefulWidget {
  bool? isnavbar;
  Navbar({
    this.isnavbar,
  });

  @override
  State<StatefulWidget> createState() => _Navbar();
}

class _Navbar extends State<Navbar> with SingleTickerProviderStateMixin {
  int _currentTabIndex = 0;
  bool isPlaying = false;
  bool isnavbar = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _TabPages = <Widget>[
      HomepageScreen(),
      StarPageScreen(),
      MessagePageScreen(),
      ProfileScreen(),
    ];
    final _BottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.home, size: 30),
        label: '',
      ),
      const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(right: 40),
          child: Icon(Icons.star, size: 30),
        ),
        label: "",
      ),
      const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(left: 40),
          child: Icon(Icons.message, size: 30),
        ),
        label: "",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person, size: 30, color: Colors.green),
        label: "",
      ),
    ];
    assert(_TabPages.length == _BottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      items: _BottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _TabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
      floatingActionButtonLocation: floatingButtonPosition,
      floatingActionButton: CustomFloatingButton(),
    );
  }
}

**/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ppp/sell.dart';

import 'colors.dart';

const floatingButtonPosition = FloatingActionButtonLocation.miniCenterDocked;

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 55,
      child: FloatingActionButton(
        backgroundColor: SecondaryColorYellow,
        onPressed: () {
          Get.to(() => CreateAddSell());
        },
        child: Column(children: [
          Flexible(
              child: SizedBox(
            height: 12,
          )),
          Text(
            "+",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
          ),
          Text("SELL",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold))
        ]),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      ),
    );
  }
}
