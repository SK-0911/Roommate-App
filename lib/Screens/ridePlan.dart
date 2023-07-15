import 'package:ServiceBox/const/CustomColors.dart';
import 'package:flutter/material.dart';

class RidePlan extends StatefulWidget {
  const RidePlan({Key? key}) : super(key: key);

  @override
  State<RidePlan> createState() => _RidePlanState();
}

class _RidePlanState extends State<RidePlan> {

  List timeCat = ["Now", "Tomorrow", "Custom"];
  List passengerCat = ["For me", "For friend1", "For friend1"];

  String time = "Now";
  String passenger = "For me";

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
          icon: Icon(Icons.arrow_back, size: 20,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Plan Your Ride"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/3),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                // Picker
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Time Dropdown
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: DropdownButton<String>(
                        underline: Container(
                          height: 0,
                          color: Colors.transparent,
                        ),
                        isExpanded: true,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                          size: 20,
                        ),
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              timeCat[0],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            value: timeCat[0],
                          ),
                          DropdownMenuItem(
                            child: Text(
                              timeCat[1],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700
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
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: DropdownButton<String>(
                        underline: Container(
                          height: 0,
                          color: Colors.transparent,
                        ),
                        isExpanded: true,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                          size: 20,
                        ),
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              passengerCat[0],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            value: passengerCat[0],
                          ),
                          DropdownMenuItem(
                            child: Text(
                              passengerCat[1],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700
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

                const SizedBox(height: 20,),

                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Current Location",
                        hintStyle: TextStyle(
                          color: AppColors.darkBlueTheme,
                          fontSize: 15,
                        ),
                        prefixIcon: Icon(Icons.location_on_outlined),
                        prefixIconColor: AppColors.darkBlueTheme,
                      ),
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                            Icons.arrow_upward,
                          color: Colors.white,
                          size: 30,
                        ),
                        Icon(
                            Icons.arrow_downward,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                    // const SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Destination",
                        hintStyle: TextStyle(
                          color: AppColors.darkBlueTheme,
                          fontSize: 15,
                        ),
                        prefixIcon: Icon(Icons.location_on_outlined),
                        prefixIconColor: AppColors.darkBlueTheme,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
