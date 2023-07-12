import 'package:ServiceBox/const/imagename.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../const/CustomColors.dart';

class Choosecab extends StatefulWidget {
  const Choosecab({Key? key}) : super(key: key);

  @override
  State<Choosecab> createState() => _ChoosecabState();
}

class _ChoosecabState extends State<Choosecab> {
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

          const SizedBox(height: 20,),

          // Map
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height/4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // color: AppColors.darkBlueTheme,
              gradient: AppColors.logoGradient
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "MAP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20,),

          // Choose your vehicles
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Choose Your Vehicle",
              style: TextStyle(
                color: AppColors.darkBlueTheme,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),

          const SizedBox(height: 10,),

          // Autos
          ListTile(
            leading: Container(
                width: MediaQuery.of(context).size.width/5,
                child: Image.asset(
                    auto,
                  fit: BoxFit.fitHeight,
                )
            ),
            title: Text(
                "Auto",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            subtitle: Text(
                "Get autos at your doorstep",
            ),
            trailing: Text(
                "₹400",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Mini
          ListTile(
            leading: Container(
                width: MediaQuery.of(context).size.width/5,
                child: Image.asset(
                  mini,
                  fit: BoxFit.fitHeight,
                )
            ),
            title: Text(
              "Mini",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            subtitle: Text(
              "Comfy, economical cars",
            ),
            trailing: Text(
              "₹815 - ₹998",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Luxury Sedan
          ListTile(
            leading: Container(
                width: MediaQuery.of(context).size.width/5,
                child: Image.asset(
                  sedan,
                  fit: BoxFit.fitHeight,
                )
            ),
            title: Text(
              "Luxury Sedan",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            subtitle: Text(
              "Spacious sedans, top drivers",
            ),
            trailing: Text(
              "₹1275",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 15,),

          // More Available rides
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "More Available rides",
              style: TextStyle(
                color: AppColors.darkBlueTheme,
                // fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          const SizedBox(height: 15,),

          // Luxury SUV
          ListTile(
            leading: Container(
                width: MediaQuery.of(context).size.width/5,
                child: Image.asset(
                  suv,
                  fit: BoxFit.fitHeight,
                )
            ),
            title: Text(
              "Luxury SUV",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            subtitle: Text(
              "Spacious SUVs",
            ),
            trailing: Text(
              "₹1648",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Taxi Non-AC
          ListTile(
            leading: Container(
                width: MediaQuery.of(context).size.width/5,
                child: Image.asset(
                  taxi,
                  fit: BoxFit.fitHeight,
                )
            ),
            title: Text(
              "Taxi Non - AC",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            trailing: Text(
              "₹505",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),



        ],
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
            // gradient: AppColors.logoGradient,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Colors.black.withOpacity(.5),
                  spreadRadius: 5,
                  blurRadius: 5
              )
            ]
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SlideAction(
                onSubmit: () => showDialog(
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

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "You will be assigned a",
                              ),
                              Text(
                                "cab driver shortly",
                              ),
                            ],
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
                                  'Okay',
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
                outerColor: AppColors.newBlueTheme,
                sliderRotate: false,
                elevation: 4,
                height: 60,
                sliderButtonIconPadding: 10,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: AppColors.logoGradient,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Slide to Book",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
