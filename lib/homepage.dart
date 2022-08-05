import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppp/deleteit.dart';
import 'package:ppp/messagepage.dart';
import 'package:ppp/myads.dart';
import 'package:ppp/savedsearch.dart';
import 'package:ppp/singleaddview.dart';
import 'package:ppp/starpage.dart';
import 'package:ppp/transactions.dart';
import 'carpage.dart';
import 'colors.dart';
import 'contactus.dart';
import 'dashboard.dart';
import 'languageandcountry.dart';
import 'navbar.dart';
import 'pages.dart';
import 'profilepage.dart';
import 'signin.dart';
import 'viewall.dart';

class HomepageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Container(
            child: Row(
              children: [
                SizedBox(width: 60),
                Text("Lara", style: TextStyle(color: primaryColorGreen)),
                Text('Classified', style: TextStyle(color: Colors.black))
              ],
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
                child: Row(
              children: [
                CircleAvatar(
                  foregroundImage:
                      AssetImage("assets/images/burning-candles_1204-34.jpg"),
                  radius: 50,
                  backgroundColor: SecondaryColorYellow,
                ),
                Flexible(
                    child: SizedBox(
                  width: 10,
                )),
                Text(
                  "Hi DemoS!",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )),
            ListTile(
              horizontalTitleGap: 1,
              leading: const Icon(Icons.home),
              title: const Text(' Dashboard '),
              onTap: () {
                Get.to(() => DashBoardScreen());
              },
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: const Icon(Icons.camera_alt_outlined),
              title: const Text(' My Adds '),
              onTap: () {
                Get.to(() => MyAddsScreen());
              },
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: const Icon(Icons.email_outlined),
              title: const Text(' Messenger '),
              onTap: () {
                Get.to(() => MessagePageScreen());
              },
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: const Icon(Icons.favorite_border),
              title: const Text(' Favourites '),
              onTap: () {
                Get.to(() => StarPageScreen());
              },
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: const Icon(Icons.person_outline),
              title: const Text(' Manage Profile '),
              onTap: () {
                Get.to(() => ProfileScreen());
              },
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: const Icon(Icons.search_outlined),
              title: const Text(' Saved Search '),
              onTap: () {
                Get.to(() => SavedSearchScreen());
              },
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: const Icon(Icons.payment_outlined),
              title: const Text(' Transactions '),
              onTap: () {
                Get.to(() => TransactionScreen());
              },
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: const Icon(Icons.language),
              title: const Text(' Language and Country '),
              onTap: () {
                Get.to(() => LanguageAndCountryScreen());
              },
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: const Icon(Icons.description),
              title: const Text(' Pages '),
              onTap: () {
                Get.to(() => PagesScreen());
              },
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: const Icon(Icons.contact_page_outlined),
              title: const Text(' Contact Us '),
              onTap: () {
                Get.to(() => ContactUsScreen());
              },
            ),
            ListTile(
              horizontalTitleGap: 1,
              leading: const Icon(Icons.logout_outlined),
              title: const Text(' Logout '),
              onTap: () {
                Get.to(() => SignInScreen());
              },
            ),
          ],
        )),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 1.8,
            child: Column(children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Stack(children: [
                    Container(
                      child: Image.asset(
                          color: Colors.grey.withOpacity(0.7),
                          colorBlendMode: BlendMode.modulate,
                          "assets/images/low-angle-view-skyscrapers_1359-1106.jpg"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 1),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(child: SizedBox(height: 50)),
                          Flexible(
                            child: Text("SELL AND BUY NEAR YOU",
                                style: TextStyle(
                                    color: primaryColorGreen,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Flexible(child: SizedBox(height: 15)),
                          Container(
                            height: 48,
                            width: MediaQuery.of(context).size.width / 1.3,
                            color: Colors.white,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search_outlined),
                                  suffixIcon: Icon(Icons.tune),
                                  hintText: 'Enter Your Name'),
                            ),
                          ),
                          Flexible(child: SizedBox(height: 40)),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(1, 1),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  color: Colors.grey,
                                )
                              ],
                              color: Colors.white,
                            ),
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Column(children: [
                              Expanded(
                                child: Row(children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(() => CarPage());
                                      },
                                      child: Container(
                                        height: 100,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black,
                                                width: 0.1)),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 55,
                                                child: Icon(
                                                    Icons.directions_car,
                                                    color: Colors.grey,
                                                    size: 33),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: 55,
                                                child: Center(
                                                    child: Text(
                                                  "Car",
                                                )),
                                              )
                                            ]),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 0.1)),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 55,
                                              child: Icon(Icons.home_outlined,
                                                  size: 33, color: Colors.grey),
                                            ),
                                            SizedBox(height: 5),
                                            Container(
                                              width: 75,
                                              child: Center(
                                                  child: Text(
                                                "Real Estate",
                                              )),
                                            )
                                          ]),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 0.1)),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 55,
                                              child: Icon(Icons.wc,
                                                  size: 33, color: Colors.grey),
                                            ),
                                            SizedBox(height: 5),
                                            Container(
                                              width: 55,
                                              child: Center(
                                                  child: Text(
                                                "Fashion",
                                              )),
                                            )
                                          ]),
                                    ),
                                  )
                                ]),
                              ),
                              Expanded(
                                child: Row(children: [
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 0.1)),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 55,
                                              child: Icon(
                                                  Icons
                                                      .miscellaneous_services_rounded,
                                                  size: 33,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              width: 55,
                                              child: Center(
                                                  child: Text(
                                                "Services",
                                              )),
                                            )
                                          ]),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 0.1)),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 55,
                                              child: Icon(
                                                  Icons
                                                      .content_paste_search_outlined,
                                                  size: 33,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              width: 75,
                                              child: Center(
                                                  child: Text(
                                                "Job Search",
                                              )),
                                            )
                                          ]),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 0.1)),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 55,
                                              child: Icon(
                                                  Icons
                                                      .health_and_safety_outlined,
                                                  size: 33,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(height: 5),
                                            Container(
                                              width: 55,
                                              child: Center(
                                                  child: Text(
                                                "Health",
                                              )),
                                            )
                                          ]),
                                    ),
                                  )
                                ]),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 100,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black,
                                                width: 0.1)),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 55,
                                                child: Icon(
                                                    Icons
                                                        .phone_android_outlined,
                                                    size: 33,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                width: 55,
                                                child: Center(
                                                    child: Text(
                                                  "Phones",
                                                )),
                                              )
                                            ]),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 100,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black,
                                                width: 0.1)),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 55,
                                                child: Icon(Icons.pets_outlined,
                                                    size: 33,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: 55,
                                                child: Center(
                                                    child: Text(
                                                  "Pets",
                                                )),
                                              )
                                            ]),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 100,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black,
                                                width: 0.1)),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 55,
                                                child: Icon(Icons.bed_outlined,
                                                    size: 33,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                width: 65,
                                                child: Center(
                                                    child: Text(
                                                  "Furniture",
                                                )),
                                              )
                                            ]),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ]),
                          ),
                          Flexible(child: SizedBox(height: 25)),
                          Row(
                            children: [
                              SizedBox(
                                width: 35,
                              ),
                              Text(
                                'Latest Add',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Flexible(child: SizedBox(height: 25)),
                          Row(
                            children: [
                              Flexible(
                                  child: SizedBox(
                                width: 35,
                              )),
                              LatestAddItem(),
                              Flexible(
                                child: SizedBox(
                                  width: 15,
                                ),
                              ),
                              LatestAddItem(),
                            ],
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 35),
                          Row(
                            children: [
                              Flexible(
                                  child: SizedBox(
                                width: 35,
                              )),
                              LatestAddItem(),
                              Flexible(
                                child: SizedBox(
                                  width: 15,
                                ),
                              ),
                              LatestAddItem(),
                            ],
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 35),
                          Row(
                            children: [
                              Flexible(
                                  child: SizedBox(
                                width: 35,
                              )),
                              LatestAddItem(),
                              Flexible(
                                child: SizedBox(
                                  width: 15,
                                ),
                              ),
                              LatestAddItem(),
                            ],
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 35),
                          Row(
                            children: [
                              Flexible(
                                  child: SizedBox(
                                width: 35,
                              )),
                              LatestAddItem(),
                              Flexible(
                                child: SizedBox(
                                  width: 15,
                                ),
                              ),
                              LatestAddItem(),
                            ],
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 20),
                          Container(
                            color: Colors.grey.shade200,
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 50,
                            child: TextButton(
                                onPressed: () {
                                  Get.to(() => ViewAllScreen());
                                },
                                child: Text(
                                  'View All',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )),
                          ),
                          Flexible(child: SizedBox(height: 60))
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ]),
          ),
        ),
        floatingActionButtonLocation: floatingButtonPosition,
        floatingActionButton: CustomFloatingButton(),
        bottomNavigationBar: CustomNavbarWidget(),
        resizeToAvoidBottomInset: false);
  }
}

class LatestAddItem extends StatelessWidget {
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
