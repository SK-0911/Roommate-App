import 'package:ServiceBox/Screens/about.dart';
import 'package:ServiceBox/const/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';


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
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.luggage),
            title: Text(moreMenu[0]),
            subtitle: Text("Lorem ipsum"),
        ),

          // My coupon
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.discount),
            title: Text(moreMenu[1]),
            subtitle: Text("Lorem ipsum"),
          ),

          // My Saved cards
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.credit_card_sharp),
            title: Text(moreMenu[2]),
            subtitle: Text("Lorem ipsum"),
          ),

          // My UPI
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.discount),
            title: Text(moreMenu[3]),
            subtitle: Text("Lorem ipsum"),
          ),

          // Customer Support
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.help),
            title: Text(moreMenu[4]),
            subtitle: Text("Lorem ipsum"),
          ),

          // Setting
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.settings),
            title: Text(moreMenu[5]),
            subtitle: Text("Lorem ipsum"),
          ),

          // Refer and Earn
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.share),
            title: Text(moreMenu[6]),
            subtitle: Text("Lorem ipsum"),
          ),

          // Refer a accommodation
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.door_back_door_outlined),
            title: Text(moreMenu[7]),
            subtitle: Text("Lorem ipsum"),
          ),

          // About Us
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>About()));
            },
            child: ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.info),
              title: Text(moreMenu[8]),
              subtitle: Text("Lorem ipsum"),
            ),
          ),
          
          const SizedBox(height: 10),
          Center(
            child: Text(
              "Copyright © 2023 Shubham Kumar",
              style: TextStyle(
                color: Colors.grey[600]
              ),
            ),
          )
        ],
      ),
    );
  }
}
