import 'package:ServiceBox/Screens/about.dart';
import 'package:ServiceBox/Screens/myBooking.dart';
import 'package:ServiceBox/Screens/offers.dart';
import 'package:ServiceBox/Screens/referEarn.dart';
import 'package:ServiceBox/Screens/referral.dart';
import 'package:ServiceBox/Screens/settings.dart';
import 'package:ServiceBox/Screens/wallet.dart';
import 'package:ServiceBox/const/CustomColors.dart';
import 'package:flutter/material.dart';


class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {


  List moreMenu = [
    "My Trips", "My coupon", "My Saved Cards", "My UPI",
    "Customer Support", "Setting",
    "Refer and Earn", "Refer a Accommodation",
    "About the App"
  ];

  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkBlueTheme,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            decoration: BoxDecoration(
              gradient: AppColors.logoGradient,
            ),
          ),
        ),
        title: Text("More Options"),
      ),
      body: ListView(
        children: [
          // My Trips
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>MyBooking()));
            },
            child: ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.luggage),
              title: Text(moreMenu[0]),
            ),
          ),

          // My coupon
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Offers()));
            },
            child: ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.discount),
              title: Text(moreMenu[1]),
            ),
          ),

          // My Saved cards
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Wallet()));
            },
            child: ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.credit_card_sharp),
              title: Text(moreMenu[2]),
            ),
          ),

          // My UPI
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.discount),
            title: Text(moreMenu[3]),
          ),

          // Customer Support
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.help),
            title: Text(moreMenu[4]),
          ),

          // Setting
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Settings()));
            },
            child: ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.settings),
              title: Text(moreMenu[5]),
            ),
          ),

          // Refer and Earn
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>ReferEarn()));
            },
            child: ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.share),
              title: Text(moreMenu[6]),
            ),
          ),

          // Refer a accommodation
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Referral()));
            },
            child: ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.door_back_door_outlined),
              title: Text(moreMenu[7]),
            ),
          ),

          // About Us
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (_)=>About()));
          //   },
          //   child: ListTile(
          //     tileColor: Colors.white,
          //     leading: Icon(Icons.info),
          //     title: Text(moreMenu[8]),
          //     subtitle: Text("Lorem ipsum"),
          //   ),
          // ),
          
          const SizedBox(height: 10),
          // Center(
          //   child: Text(
          //     "Copyright © 2023 Shubham Kumar",
          //     style: TextStyle(
          //       color: Colors.grey[600]
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
