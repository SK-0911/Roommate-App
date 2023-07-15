import 'dart:developer';
import 'dart:math';

import 'package:ServiceBox/Screens/more.dart';
import 'package:ServiceBox/Screens/myBooking.dart';
import 'package:ServiceBox/Screens/offers.dart';
import 'package:ServiceBox/Screens/soon.dart';
import 'package:flutter/material.dart';
import 'package:ServiceBox/Screens/profile.dart';
import 'package:ServiceBox/Screens/search.dart';
import 'package:ServiceBox/Screens/wallet.dart';
import 'package:ServiceBox/const/imagename.dart';
import 'package:ServiceBox/flatListing.dart';
import 'package:ServiceBox/laundry.dart';
import 'package:ServiceBox/pgListing.dart';
import 'package:ServiceBox/utils/landscape_main.dart';
import 'MyHomePage.dart';
import 'Screens/cab.dart';
import 'hostelListing.dart';
import 'const/CustomColors.dart';
import 'const/screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentTab = 0;

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
        body:
        LandscapeView(
          middleRatio: 2,
          middleWidget: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Profile Icon
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>Profile()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.darkBlueTheme,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: const Icon(
                                Icons.person,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        // Notification, wallet and search
                        Row(
                          children:  [
                            Icon(
                              Icons.notifications,
                              size: 30,
                              color: AppColors.darkBlueTheme,
                            ),
                            SizedBox(width: 10),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>Wallet()));
                              },
                              child: Icon(
                                Icons.wallet,
                                size: 30,
                                color: AppColors.darkBlueTheme,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                     Padding(
                      padding: EdgeInsets.only(left: 3, top: 10),
                      child: RichText(
                        text:
                        const TextSpan(
                          style:  TextStyle (
                            fontSize:  35,
                            fontWeight: FontWeight.w600,
                            // height:  150,
                            color:  Color(0xff000000),
                          ),
                          children:  [
                            TextSpan(
                              text:  'Namaste',
                              style:  TextStyle (
                                // 'Poppins',
                                fontSize:  45,
                                fontWeight:  FontWeight.w600,
                                // height:  150,
                                color:  Color(0xff000000),
                              ),
                            ),
                            TextSpan(
                              text:  '\nMayank',
                              style:  TextStyle (
                                // 'Poppins',
                                fontSize:  45,
                                fontWeight:  FontWeight.w600,
                                // height:  150,
                                color:  AppColors.lightBlueTheme,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 3, bottom: 5),
                      child: Text(
                        "To Kaha Chalein?",
                        style: TextStyle(
                          color: AppColors.darkBlueTheme,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),

                    Column(
                      children: [
                        // Search
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/15,),
                          child: TextField(
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 0),
                              filled: true,
                              fillColor: AppColors.lightGrey,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Search City",
                              hintStyle: TextStyle(
                                color: AppColors.darkBlueTheme,
                              ),
                              prefixIcon: Icon(Icons.search),
                              prefixIconColor: Colors.white,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8,),

                        // Text below search
                        Text(
                            "Search for a Verified Services & More...",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 15,),
                  ],
                ),
              ),

              // Services Section
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(

                          width: Screen.isPortrait(context)
                              ? MediaQuery.of(context).size.width / 2.1
                              : MediaQuery.of(context).size.width / 4,
                          // height: 150, // Half of the screen width
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // Adjust the value for desired curve
                            ),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>Listing()));
                              },

                              child: Stack(
                                children: [
                                  Container(
                                    width: Screen.isPortrait(context)
                                        ? MediaQuery.of(context).size.width / 2.1
                                        : MediaQuery.of(context).size.width / 4,

                                    child: Image.asset(hostelcard,
                                      fit: BoxFit.fill,
                                      height: 120,
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text("Hostel",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    // subtitle: Text('Card Subtitle'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(

                          width: Screen.isPortrait(context)
                              ? MediaQuery.of(context).size.width / 2.1
                              : MediaQuery.of(context).size.width / 4,
                          // height: 150, // Half of the screen width
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // Adjust the value for desired curve
                            ),
                            child: Container(

                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Cab()));
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      width: Screen.isPortrait(context)
                                          ? MediaQuery.of(context).size.width / 2.1
                                          : MediaQuery.of(context).size.width / 4,
                                      child: Image.asset(cabcard,
                                      fit: BoxFit.fill,
                                      height: 120,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text("Cab",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                      // subtitle: Text('Card Subtitle'),
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(

                          width: Screen.isPortrait(context)
                              ? MediaQuery.of(context).size.width / 3.2
                              : MediaQuery.of(context).size.width / 4,
                          // height: 150, // Half of the screen width
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  40.0), // Adjust the value for desired curve
                            ),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>FlatListing()));
                              },

                              child: Stack(
                                children: [
                                  Container(
                                    width: Screen.isPortrait(context)
                                        ? MediaQuery.of(context).size.width / 3.2
                                        : MediaQuery.of(context).size.width / 4,
                                    child: Image.asset(Flatcard,
                                      fit: BoxFit.fill,
                                      height: 100,
                                    ),
                                  ),
                                  ListTile(
                                    title: Text("Flat",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    // subtitle: Text('Card Subtitle'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PGListing()));
                          },
                          child: Container(
                            width: Screen.isPortrait(context)
                                ? MediaQuery.of(context).size.width / 3.2
                                : MediaQuery.of(context).size.width / 4,
                            // height: 150, // Half of the screen width
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    40.0), // Adjust the value for desired curve
                              ),
                              child: Container(

                                child: Stack(
                                  children: [
                                    Container(
                                      width: Screen.isPortrait(context)
                                          ? MediaQuery.of(context).size.width / 3.2
                                          : MediaQuery.of(context).size.width / 4,
                                      child: Image.asset(Pgcard,
                                        fit: BoxFit.fill,
                                        height: 100,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text("PG",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                        // subtitle: Text('Card Subtitle'),
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const ComingSoon()));
                          },
                          child: Container(
                            width: Screen.isPortrait(context)
                                ? MediaQuery.of(context).size.width / 3.2
                                : MediaQuery.of(context).size.width / 4,
                            // height: 150, // Half of the screen width
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    40.0), // Adjust the value for desired curve
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    width: Screen.isPortrait(context)
                                        ? MediaQuery.of(context).size.width / 3.2
                                        : MediaQuery.of(context).size.width / 4,
                                    child: Image.asset(Laundrycard,
                                      fit: BoxFit.fill,
                                      height: 100,
                                    ),
                                  ),
                                  ListTile(
                                    title: Text("Laundry",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                      // subtitle: Text('Card Subtitle'),
                                    ),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Offers and view all
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Offers",
                      style: TextStyle(
                        color: AppColors.darkBlueTheme,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children:  [
                        Text(
                          "View all ",
                          style: TextStyle(
                            color: AppColors.darkBlueTheme,
                            fontSize: 15,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.darkBlueTheme,
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // offers horizontal slider
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Trending
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currentTab = 0;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 4.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: AppColors.lightBlueTheme, width: 1.5),
                            color: currentTab == 0
                                ? AppColors.lightBlueTheme
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Trending",
                              style: TextStyle(
                                fontSize: 14,
                                color: currentTab == 0
                                    ? Colors.white
                                    : AppColors.darkBlueTheme,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Hostel
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currentTab = 1;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 4.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: AppColors.lightBlueTheme, width: 1.5),
                            color: currentTab == 1
                                ? AppColors.lightBlueTheme
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Hostel",
                              style: TextStyle(
                                fontSize: 14,
                                color: currentTab == 1
                                    ? Colors.white
                                    : AppColors.darkBlueTheme,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // PG
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currentTab = 2;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 4.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: AppColors.lightBlueTheme, width: 1.5),
                            color: currentTab == 2
                                ? AppColors.lightBlueTheme
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "PG",
                              style: TextStyle(
                                fontSize: 14,
                                color: currentTab == 2
                                    ? Colors.white
                                    : AppColors.darkBlueTheme,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Flat
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currentTab = 3;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 4.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: AppColors.lightBlueTheme, width: 1.5),
                            color: currentTab == 3
                                ? AppColors.lightBlueTheme
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Flat",
                              style: TextStyle(
                                fontSize: 14,
                                color: currentTab == 3
                                    ? Colors.white
                                    : AppColors.darkBlueTheme,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Laundry
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currentTab = 4;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 4.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: AppColors.lightBlueTheme, width: 1.5),
                            color: currentTab == 4
                                ? AppColors.lightBlueTheme
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Laundry",
                              style: TextStyle(
                                fontSize: 14,
                                color: currentTab == 4
                                    ? Colors.white
                                    : AppColors.darkBlueTheme,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Cab
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currentTab = 5;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 4.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: AppColors.lightBlueTheme, width: 1.5),
                            color: currentTab == 5
                                ? AppColors.lightBlueTheme
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Cab",
                              style: TextStyle(
                                fontSize: 14,
                                color: currentTab == 5
                                    ? Colors.white
                                    : AppColors.darkBlueTheme,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Offers ListView
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // 1st Offer
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.darkBlueTheme,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black87,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(height: 7),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Text(
                                "BOOK NOW >",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 160,
                              width: 250,
                              color: Colors.black87,
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),

                    // 2nd Offer
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.darkBlueTheme,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black87,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(height: 7),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Text(
                                "BOOK NOW >",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 160,
                              width: 250,
                              color: Colors.black87,
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),

                    // 3rd Offer
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.darkBlueTheme,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black87,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(height: 7),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Text(
                                "BOOK NOW >",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 160,
                              width: 250,
                              color: Colors.black87,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Hostels Around Delhi",
                      style: TextStyle(
                        color: AppColors.darkBlueTheme,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const Listing();
                            }),
                          ),
                          child: const Text(
                            "View all ",
                            style: TextStyle(
                              color: AppColors.darkBlueTheme,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.darkBlueTheme,
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Hostels Listing
              Container(
                height: 300,
                margin: const EdgeInsets.only(right: 20),
                // decoration: BoxDecoration(
                //   // color: DarkBlueTheme,
                //   borderRadius: BorderRadius.circular(8),
                //   border: Border.all(color: Colors.grey.shade200),
                // ),
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  // Hostel 1
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.darkBlueTheme),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black87,
                              // image: DecorationImage(
                              //   image: NetworkImage(),
                              // ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Hostel 1",
                            style: TextStyle(
                              color: AppColors.darkBlueTheme,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: AppColors.lightBlueTheme,
                              ),
                              Text(
                                "Bandra, Mumbai",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: AppColors.lightBlueTheme,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Rs. 20,000/Month",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: AppColors.darkBlueTheme,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  // Hostel 2
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.darkBlueTheme),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black87,
                              // image: DecorationImage(
                              //   image: NetworkImage(),
                              // ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Hostel 2",
                            style: TextStyle(
                              color: AppColors.darkBlueTheme,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: AppColors.lightBlueTheme,
                              ),
                              Text(
                                "Bandra, Mumbai",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: AppColors.lightBlueTheme,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Rs. 20,000/Month",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: AppColors.darkBlueTheme,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  // Hostel 3
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.darkBlueTheme),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black87,
                              // image: DecorationImage(
                              //   image: NetworkImage(),
                              // ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Hostel 3",
                            style: TextStyle(
                              color: AppColors.darkBlueTheme,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: AppColors.lightBlueTheme,
                              ),
                              Text(
                                "Bandra, Mumbai",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: AppColors.lightBlueTheme,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Rs. 20,000/Month",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: AppColors.darkBlueTheme,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
    );
  }




}
