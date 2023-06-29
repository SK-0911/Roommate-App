import 'package:ServiceBox/Screens/myBooking.dart';
import 'package:ServiceBox/splash.dart';
import 'package:flutter/material.dart';

import '/Screens/laundrybooking.dart';
import '/Screens/otp.dart';
import '/Screens/profile.dart';
import '/Screens/wallet.dart';
import '/flatListing.dart';
import '/homePage.dart';
import '/hostelInfo.dart';
import '/laundry.dart';
import '/pgListing.dart';
import '/splash.dart';
import '/login.dart';
import 'Screens/offers.dart';
import 'hostelListing.dart';
import '/Screens/search.dart';
import 'package:ServiceBox/login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}


