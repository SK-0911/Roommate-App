import 'package:ServiceBox/Screens/profile.dart';
import 'package:ServiceBox/Screens/ridePlan.dart';
import 'package:ServiceBox/Screens/scheduleCab.dart';
import 'package:ServiceBox/const/CustomColors.dart';
import 'package:flutter/material.dart';

class Cab extends StatefulWidget {
  const Cab({Key? key}) : super(key: key);

  @override
  State<Cab> createState() => _CabState();
}

class _CabState extends State<Cab> {

  List timeCat = ["Now", "Tomorrow", "Custom"];
  List passengerCat = ["For me", "For friend1", "For friend1"];

  String time = "Now";
  String passenger = "For me";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back button
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.darkBlueTheme
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),

                // Profile
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Profile()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.darkBlueTheme
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15,),

            // Current Location
            TextField(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.grey.withOpacity(0.4),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Current Location",
                hintStyle: TextStyle(
                  color: AppColors.darkBlueTheme,
                ),
                prefixIcon: Icon(Icons.location_on_outlined),
                prefixIconColor: Colors.white,
              ),
            ),

          ],
        ),
      ),

      bottomNavigationBar: Container(
        // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/10),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Local, Outstation, Airport Cab, Round Trip
            // Container(
            //   height: 50,
            //   // padding: ,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       const SizedBox(width: 10,),
            //       tripType("Local", Icons.apartment_sharp),
            //       const SizedBox(width: 30,),
            //       tripType("Outstation", Icons.luggage),
            //       const SizedBox(width: 30,),
            //       tripType("Airport", Icons.airplane_ticket_outlined),
            //       const SizedBox(width: 30,),
            //       tripType("Round Trip", Icons.trip_origin),
            //       const SizedBox(width: 10,),
            //     ],
            //   ),
            // ),

            const SizedBox(height: 20,),

            //
            Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                // gradient: AppColors.logoGradient,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.4),
                    spreadRadius: 3,
                    blurRadius: 3
                )
                ]
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  // Tab
                  DefaultTabController(
                    length: 4,
                    child: TabBar(
                      indicatorColor: AppColors.darkBlueTheme,
                        indicatorWeight: 5,
                        tabs: [
                          tripTab("Local", Icons.apartment_sharp),
                          tripTab("Outstation", Icons.luggage),
                          tripTab("Airport", Icons.airplane_ticket_outlined),
                          tripTab("Round Trip", Icons.trip_origin),
                        ]
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Picker
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Time Dropdown
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        width: MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(
                            // color: AppColors.lightGrey,
                            gradient: AppColors.logoGradient,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: DropdownButton<String>(
                          dropdownColor: AppColors.darkBlueTheme,
                          isDense: true,
                          underline: Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                          isExpanded: true,
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: 20,
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text(
                                timeCat[0],
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                ),
                              ),
                              value: timeCat[0],
                            ),
                            DropdownMenuItem(
                              child: Text(
                                timeCat[1],
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                ),
                              ),
                              value: timeCat[1],
                            ),
                          ],
                          value: time,
                          onChanged: (String? newValue) {
                            setState(() {
                              time = newValue!;
                            });
                          },
                        ),
                      ),

                      // Passenger Dropdown
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        width: MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(
                            // color: AppColors.lightGrey,
                            gradient: AppColors.logoGradient,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: DropdownButton<String>(
                          dropdownColor: AppColors.darkBlueTheme,
                          isDense: true,
                          underline: Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                          isExpanded: true,
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: 20,
                          ),
                          items: [
                            DropdownMenuItem(
                              child: Text(
                                passengerCat[0],
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                ),
                              ),
                              value: passengerCat[0],
                            ),
                            DropdownMenuItem(
                              child: Text(
                                passengerCat[1],
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                ),
                              ),
                              value: passengerCat[1],
                            ),
                          ],
                          value: passenger,
                          onChanged: (String? newValue) {
                            setState(() {
                              passenger = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Where To?",
                          style: TextStyle(
                            color: AppColors.darkBlueTheme,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10,),

                  address("Address 1"),
                  address("Address 2"),
                  address("Address 3"),
                  address("Address 4")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  tripTab(String title, IconData icon){
    return Tab(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: AppColors.darkBlueTheme,
            size: 25,
          ),

          Text(
            title,
            style: TextStyle(
              color: AppColors.darkBlueTheme,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  address(String add){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>ScheduleCab()));
      },
      child: ListTile(
        dense: true,
        leading: Icon(Icons.watch_later, color: AppColors.darkBlueTheme,),
        title: Text(
            add,
          style: TextStyle(
            color: AppColors.darkBlueTheme,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // tripType(String title, IconData icon){
  //   return Container(
  //     padding: EdgeInsets.symmetric(horizontal: 15),
  //     decoration: BoxDecoration(
  //       // color: Colors.white,
  //       gradient: AppColors.logoGradient,
  //       borderRadius: BorderRadius.circular(10),
  //       boxShadow: [],
  //     ),
  //     child: AspectRatio(
  //       aspectRatio: 1.0,
  //       child: Center(
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Icon(
  //               icon,
  //               color: Colors.white,
  //               size: 25,
  //             ),
  //
  //             // const SizedBox(height: 3,),
  //
  //             Text(
  //               title,
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 10,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
