import 'package:ServiceBox/const/CustomColors.dart';
import 'package:flutter/material.dart';

class MyBooking extends StatefulWidget {
  const MyBooking({Key? key}) : super(key: key);

  @override
  State<MyBooking> createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> {

  String booking = 'All Bookings';
  List bookingCat = ['All Bookings', 'Item2'];

  String date = 'Travel Date';

  List dateCat = ['Travel Date', 'Item2'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: AppColors.darkBlueTheme,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
          ),
          title: Text("My trips"),
          bottom: TabBar(
            indicatorColor: AppColors.lightBlueTheme,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            isScrollable: true,
            tabs: [
              Tab(text: 'All',),
              Tab(text: 'Cancelled',),
              Tab(text: 'Completed'),
              Tab(text: 'Unsuccessful'),
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Dropdown 1 (All bookings)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    width: MediaQuery.of(context).size.width/2.2,
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
                              bookingCat[0],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            value: bookingCat[0],
                          ),
                          DropdownMenuItem(
                            child: Text(
                              bookingCat[1],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            value: bookingCat[1],
                          ),
                        ],
                        value: booking,
                        onChanged: (String? newValue) {
                          setState(() {
                            booking = newValue!;
                          });
                        },
                    ),
                  ),

                  // Dropdown 2 (Travel Date)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    width: MediaQuery.of(context).size.width/2.2,
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
                            dateCat[0],
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          value: dateCat[0],
                        ),
                        DropdownMenuItem(
                          child: Text(
                            dateCat[1],
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          value: dateCat[1],
                        ),
                      ],
                      value: date,
                      onChanged: (String? newValue) {
                        setState(() {
                          date = newValue!;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),

            tile("Marriott, Mumbai"),
            const SizedBox(height: 10,),
            tile("Taj, Udaipur")
          ],
        ),
      ),
    );
  }

  tile(String name,){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      // height: MediaQuery.of(context).size.height*0.1,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: ListTile(
          leading: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: AppColors.lightBlueTheme.withOpacity(0.2),
                  shape: BoxShape.circle
              ),
              child: Icon(Icons.apartment, color: Colors.black,)
          ),
          title: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Cancelled | ",
                      style: TextStyle(
                          color: Colors.red
                      ),
                    ),
                    Text(
                      "22 Jun",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 12,
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 3),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                Row(
                  children: [
                    Icon(Icons.person, size: 15,),
                    Align(
                      child: Text(
                        " [User] | ",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Icon(Icons.hotel, size: 15,),
                    Align(
                      child: Text(
                          " 1 room(s)",
                        style: TextStyle(
                          fontSize: 12
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
        ),
      ),
    );
  }
}
