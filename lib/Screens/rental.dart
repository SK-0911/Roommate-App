import 'package:flutter/material.dart';

import '../const/CustomColors.dart';
import '../const/imagename.dart';

class Rental extends StatefulWidget {
  const Rental({Key? key}) : super(key: key);

  @override
  State<Rental> createState() => _RentalState();
}

class _RentalState extends State<Rental> {



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
          "Rental",
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
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Text(
                "Choose Your Vehicle",
                style: TextStyle(
                  color: AppColors.darkBlueTheme,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
          ),

          Container(
            height: MediaQuery.of(context).size.height/5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10),
                Vehicle("Scooter"),
                const SizedBox(width: 40),
                Vehicle("Bike"),
                const SizedBox(width: 40),
                Vehicle("Car"),
                const SizedBox(width: 10),
              ],
            ),
          ),

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
                Time("9:00 AM"),
                SizedBox(width: 15,),
                Time("10:00 AM"),
                SizedBox(width: 10,),
                Time("11:00 AM"),
                SizedBox(width: 10,),
                Time("12:00 AM"),
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
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.black.withOpacity(.2),
                      spreadRadius: 1.5,
                      blurRadius: 5
                  )
                ]
            ),
            child: Text(
              "Pick Up Location",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 40,),

          InkWell(
            onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Center(
                    child: Text(
                      'Rent Bike on',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          '17th March at 9:00 PM'
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Cancel
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                            color: Color(0xffEDEBEB),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: Text(
                                'Cancel',
                              style: TextStyle(
                                color: Color(0xffB5B5B5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10,),

                        // Confirm
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                            // color: AppColors.darkBlueTheme,
                              gradient: AppColors.logoGradient,
                              borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () => showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: Center(
                                    child: Text(
                                      'Booking Confirmed!',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.lightGreenTheme,
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        ),
                                      ),

                                      const SizedBox(height: 15,),

                                      Text(
                                        "Your order has been\nsuccessfully placed",
                                        style: TextStyle(
                                        ),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                                          decoration: BoxDecoration(
                                            gradient: AppColors.logoGradient,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: TextButton(
                                            onPressed: () => Navigator.pop(context, 'Cancel'),
                                            child: Text(
                                              'Cancel',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                            ),
                            child: Text(
                              'Confirm',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ),
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

  Vehicle(String title){
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width/3,
          height: MediaQuery.of(context).size.width/3,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage(title=="Scooter"?washAndIron:title=="Bike"?dryClean:title=="Car"?Ironing:chemicalWash),
                  fit: BoxFit.contain,
                  alignment: Alignment.center
              ),
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
          ),
        ),

        const SizedBox(height: 10),

        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: AppColors.darkBlueTheme,
            fontWeight: FontWeight.w800,
          ),
        )
      ],
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
