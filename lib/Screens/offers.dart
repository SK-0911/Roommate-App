import 'package:flutter/material.dart';

import '../const/CustomColors.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppColors.darkBlueTheme, AppColors.lightBlueTheme, AppColors.lightGreenTheme],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                )
            ),
          ),
        ),
        title: Text(
          "Offers ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            offer(),
            offer(),
            offer(),
            offer()
          ],
        ),
      ),
    );
  }

  offer() => AspectRatio(
    aspectRatio: 5/2.8,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.darkBlueTheme,
      ),
      child: Column(
        children:  [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Get 20% Cashback",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          SizedBox(height: 5),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "on using HDFC Bank Cards",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),

          SizedBox(height: 40),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "*terms and conditions apply",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
