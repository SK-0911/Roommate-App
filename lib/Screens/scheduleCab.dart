import 'package:ServiceBox/Screens/chooseCab.dart';
import 'package:flutter/material.dart';

import '../const/CustomColors.dart';

class ScheduleCab extends StatefulWidget {
  const ScheduleCab({Key? key}) : super(key: key);

  @override
  State<ScheduleCab> createState() => _ScheduleCabState();
}

class _ScheduleCabState extends State<ScheduleCab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            decoration: BoxDecoration(
                gradient: AppColors.logoGradient,
            ),
          ),
        ),
        title: Text(
          "Schedule your Cab",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_outlined, size: 30),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [

          // Day(Text)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text(
              "Day",
              style: TextStyle(
                color: AppColors.darkBlueTheme,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height/9,
            padding: EdgeInsets.symmetric(vertical: 5),
            // color: AppColors.bluecard,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10,),
                Day("SUN", "12"),
                const SizedBox(width: 15,),
                Day("MON", "13"),
                const SizedBox(width: 15,),
                Day("TUE", "14"),
                const SizedBox(width: 15,),
                Day("WED", "15"),
                const SizedBox(width: 15,),
                Day("THU", "16"),
                const SizedBox(width: 15,),
                Day("FRI", "17"),
              ],
            ),
          ),

          // Time text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text(
              "Time",
              style: TextStyle(
                color: AppColors.darkBlueTheme,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),

          // Time slider
          Container(
            height: MediaQuery.of(context).size.height/12,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                Time("8:00 AM"),
                SizedBox(width: 15,),
                Time("8:15 AM"),
                SizedBox(width: 15,),
                Time("8:30 AM"),
                SizedBox(width: 10,),
                Time("8:45 AM"),
                SizedBox(width: 10,),
                Time("9:00 AM"),
              ],
            ),
          ),

          //Location text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text(
              "Location",
              style: TextStyle(
                color: AppColors.darkBlueTheme,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),

          // Pick Up Location
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 10, right: MediaQuery.of(context).size.width/3.5),
            decoration: BoxDecoration(
                color: Color(0xffEDEBEB),
                borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Pick Up Location",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 10,),

          // Double arrow
          Container(
            margin: EdgeInsets.only(left: 10, right: MediaQuery.of(context).size.width/3.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_upward,
                  color: AppColors.darkBlueTheme,
                  size: 30,
                ),
                Icon(
                  Icons.arrow_downward,
                  color: AppColors.darkBlueTheme,
                  size: 30,
                ),
              ],
            ),
          ),

          const SizedBox(height: 10,),

          // Destination and add button
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 10, right: MediaQuery.of(context).size.width/3.5),
            decoration: BoxDecoration(
                color: Color(0xffEDEBEB),
                borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Destination",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 40,),

          // Book Now button
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Choosecab()));
              },
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  // color: AppColors.darkBlueTheme,
                    gradient: AppColors.logoGradient,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 5),
                          color: Colors.black.withOpacity(.2),
                          spreadRadius: 1.5,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Center(
                  child: Text(
                    "BOOK NOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget Day(String day, String date){
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width/6,
          height: MediaQuery.of(context).size.width/6,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Color(0xffEDEBEB),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 5),
                    color: Colors.black.withOpacity(.2),
                    spreadRadius: 1.5,
                    blurRadius: 5
                )
              ]
          ),
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  day,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 2,),

                Text(
                  date,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Time(String time){
    return Column(
      children: [
        InkWell(
          child: Container(
            width: MediaQuery.of(context).size.width/4,
            // height: MediaQuery.of(context).size.width/5,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xffEDEBEB),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.black.withOpacity(.2),
                      spreadRadius: 1.5,
                      blurRadius: 5
                  )
                ]
            ),
            child: AspectRatio(
              aspectRatio: 2.1/1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
