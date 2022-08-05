import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ppp/homepage.dart';
import 'colors.dart';
import 'deleteit.dart';
import 'navbar.dart';

class SingleAddView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.to(() => HomepageScreen());
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 50,
              )),
          actions: [
            Icon(
              Icons.favorite_border,
              color: primaryColorGreen,
              size: 50,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: double.infinity,
                  //color: Colors.red,
                  child: FittedBox(
                    child: Image.asset(
                        'assets/images/red-luxury-sedan-road_114579-5079.jpg'),
                    fit: BoxFit.fill,
                  )),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 6,
                color: Colors.grey.shade200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    SizedBox(width: 20),
                    Container(
                        height: 100,
                        width: 150,
                        child: FittedBox(
                          child: Image.asset(
                              'assets/images/red-luxury-sedan-road_114579-5079.jpg'),
                          fit: BoxFit.fill,
                        )),
                    SizedBox(width: 30),
                    Container(
                        height: 100,
                        width: 150,
                        child: FittedBox(
                          child: Image.asset(
                              'assets/images/red-luxury-sedan-road_114579-5079.jpg'),
                          fit: BoxFit.fill,
                        )),
                    SizedBox(width: 30),
                    Container(
                        height: 100,
                        width: 150,
                        child: FittedBox(
                          child: Image.asset(
                              'assets/images/red-luxury-sedan-road_114579-5079.jpg'),
                          fit: BoxFit.fill,
                        )),
                  ]),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("   Car",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 23.5)),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 18),
                  Icon(Icons.folder_outlined, color: Colors.grey),
                  Text(' Cars', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 20),
                  Icon(Icons.location_on_outlined, color: Colors.grey),
                  Text(' Delhi', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 20),
                  Icon(Icons.visibility, color: Colors.grey),
                  Text(' 41 Views', style: TextStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text("   \$400",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.share_outlined,
                      color: primaryColorGreen, size: 30),
                  SizedBox(width: 10),
                  Icon(Icons.error_outline, color: primaryColorGreen, size: 30)
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Text("   Description",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 23.5)),
                ],
              ),
              Row(
                children: [
                  Text("    Hsjskl",
                      style: TextStyle(color: Colors.grey, fontSize: 18)),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("   Seller Details",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 23.5)),
                ],
              ),
              Container(
                //color: Colors.green,
                height: MediaQuery.of(context).size.height / 7,
                child: Row(children: [
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 150,
                  ),
                  Container(
                    //color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          //color: Colors.grey,
                          margin: EdgeInsets.only(right: 90),
                          child: Text("Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "  More ads from this user",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        )
                      ],
                    ),
                  )
                ]),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Enquiry',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    primary: primaryColorGreen,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(MediaQuery.of(context).size.width / 1.1,
                        MediaQuery.of(context).size.height / 15)),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: TextFormField(
                  maxLines: 6,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  decoration: InputDecoration(
                      hintText: 'Your Message Here',
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey.shade200),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Send',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
                style: ElevatedButton.styleFrom(
                    primary: SecondaryColorYellow,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(MediaQuery.of(context).size.width / 1.1,
                        MediaQuery.of(context).size.height / 15)),
              ),
              SizedBox(height: 60),
            ],
          ),
        )),
        floatingActionButtonLocation: floatingButtonPosition,
        floatingActionButton: CustomFloatingButton(),
        bottomNavigationBar: CustomNavbarWidget(),
      ),
    );
  }
}
