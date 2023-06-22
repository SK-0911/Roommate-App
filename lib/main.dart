import 'package:flutter/material.dart';
import 'package:sb/Screens/laundrybooking.dart';
import 'package:sb/Screens/profile.dart';
import 'package:sb/Screens/wallet.dart';
import 'package:sb/flatListing.dart';
import 'package:sb/homePage.dart';
import 'package:sb/hostelInfo.dart';
import 'package:sb/laundry.dart';
import 'package:sb/pgListing.dart';
import 'package:sb/sample.dart';
import 'package:sb/splash.dart';
import 'package:sb/login.dart';
import 'hostelListing.dart';
import 'package:sb/Screens/search.dart';

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


