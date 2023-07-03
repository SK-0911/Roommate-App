import 'dart:developer';
import 'dart:math';

import 'package:ServiceBox/Screens/more.dart';
import 'package:ServiceBox/Screens/myBooking.dart';
import 'package:ServiceBox/Screens/offers.dart';
import 'package:ServiceBox/homePage.dart';
import 'package:flutter/material.dart';
import 'package:ServiceBox/Screens/profile.dart';
import 'package:ServiceBox/Screens/search.dart';
import 'package:ServiceBox/Screens/wallet.dart';
import 'package:ServiceBox/const/imagename.dart';
import 'package:ServiceBox/flatListing.dart';
import 'package:ServiceBox/laundry.dart';
import 'package:ServiceBox/pgListing.dart';
import 'package:ServiceBox/utils/landscape_main.dart';
import 'hostelListing.dart';
import 'const/CustomColors.dart';
import 'const/screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  int currentTab = 0;

  final Screens = [
    HomePage(),
    MyBooking(),
    Offers(),
    More()
  ];

  // static const DarkBlueTheme = Color(0xff212E5C);
  // static const LightBlueTheme = Color(0xff0D6FE5);
  static const LightGreenTheme = Color(0xff00BF63);

  @override
  Widget build(BuildContext context) {
    bool isTablet = Screen().isTab(context);

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    bool isClicked;

    return Scaffold(
        // appBar: AppBar(),
        body: Screens[_selectedIndex],
        bottomNavigationBar: SafeArea(
          child: Container(
            margin: Screen().isTab(context)
                ? EdgeInsets.only(
                    left: Screen.width(context) / 2.8,
                    right: Screen.width(context) / 2.8,
                    bottom: 30)
                : EdgeInsets.all(0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Screen().isTab(context)
                        ? Colors.black
                        : Colors.transparent),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft:
                        Radius.circular(Screen().isTab(context) ? 16 : 0),
                    bottomRight:
                        Radius.circular(Screen().isTab(context) ? 16 : 0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: isTablet ? 7 : 2,
                      spreadRadius: isTablet ? 0.3 : -1,
                      offset: isTablet ? Offset(0, 0) : Offset(0, -2)),
                ]),
            height: 75,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.min,
              children: [
                _bottomIconsStyle(context, 0, 'Home'),
                // const SizedBox(width: 15),
                _bottomIconsStyle(context, 1, 'My Booking'),
                _bottomIconsStyle(context, 2, 'Offers'),
                // const SizedBox(width: 20),
                _bottomIconsStyle(context, 3, 'More'),
              ],
            ),
          ),
        )
    );
  }



  Widget _bottomIconsStyle(BuildContext context, int index, String title) {
   // / final theme = Theme.of(context);
    return SizedBox(
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(shape: BoxShape.circle,
                    // border: Border.all(width: 1),
                    color:  _selectedIndex == index ? AppColors.darkBlueTheme : Colors.white
                ),
                child: Icon(
                  index == 0
                      ? Icons.home
                      : index == 1
                          ? Icons.query_builder_outlined
                          : index == 2
                              ? Icons.local_offer
                              : Icons.more_horiz,
                  size: 25,
                  color: _selectedIndex == index ? Colors.white
                      : Colors.black54,
                ),
              ),

              SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 12,
                    color: _selectedIndex == index ? AppColors.darkBlueTheme : Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
