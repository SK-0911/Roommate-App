import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'const/screen.dart';
import 'const/CustomColors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class Laundry extends StatefulWidget {
  const Laundry({Key? key}) : super(key: key);

  @override
  State<Laundry> createState() => _LaundryState();
}

class _LaundryState extends State<Laundry> {

  List adsList = [
    {"id": 1, "imgPath": 'assets/facebook.png'},
    {"id": 2, "imgPath": 'assets/facebook.png'},
    {"id": 3, "imgPath": 'assets/facebook.png'}
  ];

  final CarouselController adsController = CarouselController();
  int currentAd = 0;

  final TableRow _orderDetails = const TableRow(
    children: [
      Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Order 1",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.darkBlueTheme,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Delivered",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.darkBlueTheme,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]
  );

  void _showDatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2025),
    );
  }

  void _showTimePicker(){
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Top Green Section
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffD9FFD9),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.4),
                      spreadRadius: 3,
                      blurRadius: 3
                  )
                ]
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Icon, User
                        Row(
                          children: const [
                            Icon(
                                Icons.person,
                                size: 30,
                                color: AppColors.darkBlueTheme,
                            ),
                            const SizedBox(width: 10),

                            Text(
                                "Namaste, Mayank",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                            )
                          ],
                        ),

                        // Bell icon
                        const Icon(
                            Icons.notifications,
                            size: 25,
                            color: AppColors.darkBlueTheme,
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Book a slot ...
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      // Book a ...
                      const Text(
                          "Book a slot for your laundry",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.darkBlueTheme,
                            letterSpacing: 1.2,
                          ),

                      ),

                      const SizedBox(height: 10),

                      // Laundry service text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Laundry Service",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: AppColors.lightGreenTheme,
                            ),
                          ),

                          Icon(
                            Icons.local_laundry_service,
                            size: 35,
                            color: AppColors.lightBlueTheme,
                          )
                        ],
                      )
                    ],
                  ),

                  // Laundry Services
                  Container(
                      height: 240,
                      padding: const EdgeInsets.all(25),
                      // decoration: BoxDecoration(
                      //   // color: Colors.white,
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Category("Wash and Iron", Icons.wash, AppColors.lightGreenTheme),
                          const SizedBox(width: 15),
                          Category("Dry Clean", Icons.dry_cleaning, AppColors.darkBlueTheme),
                          const SizedBox(width: 15),
                          Category("Ironing", Icons.iron, AppColors.lightBlueTheme),
                          const SizedBox(width: 15),
                          Category("Chemical Wash", Icons.wash, AppColors.darkBlueTheme)
                        ],
                      )
                    ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // My Orders Text
            const Center(
              child: Text(
                "MY ORDERS",
                style: TextStyle(
                  color: AppColors.darkBlueTheme,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.2,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Screen.isPortrait(context)
                        ? MediaQuery.of(context).size.width / 2.4
                        : MediaQuery.of(context).size.width / 4.7,
                    // height: 100,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            spreadRadius: 0.5,
                            blurRadius: 3
                        )
                      ]
                    ),
                    child: Card(
                      color: AppColors.lightBlueTheme,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: const Center(
                          child: Text(
                            "Order Number",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: Screen.isPortrait(context)
                        ? MediaQuery.of(context).size.width / 2.4
                        : MediaQuery.of(context).size.width / 4,
                    // height: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              spreadRadius: 0.5,
                              blurRadius: 3
                          )
                        ]
                    ),
                    child: Card(
                      color: AppColors.darkBlueTheme,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: const Center(
                          child: Text(
                            "Order Status",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Center(
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      _orderDetails,
                      _orderDetails,
                      _orderDetails,
                    ],
                  ),
                ),
            ),

            const SizedBox(height: 30),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 45),
              child: Center(
                child: SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: AnotherCarousel(
                    images: [
                      Image.asset('assets/icons/apple.png', fit: BoxFit.cover,),
                      Image.asset('assets/icons/google.png', fit: BoxFit.cover,),
                      Image.asset('assets/icons/facebook.png', fit: BoxFit.cover,),
                    ],
                    dotSize: 4.0,
                    dotIncreaseSize: 2.5,
                    dotSpacing: 15.0,
                    boxFit: BoxFit.scaleDown,
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

  Category(String title, IconData iconData, Color bgColor) => Container(
    height: 200,
    width: 200,
    padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
    decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              // offset: const Offset(0, 5),
              color: Colors.black.withOpacity(.6),
              spreadRadius: 1,
              blurRadius: 5
          )
        ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold
            )
        ),
        const SizedBox(height: 8),
        Icon(
            iconData,
            color: AppColors.darkBlueTheme, size: 30,
        ),
      ],
    ),
  );

  confirm(){
    return AlertDialog(
      icon: Icon(Icons.people, size: 40),
      iconColor: AppColors.darkBlueTheme,
      content: const Text("Book Laundry service on\nMay 5, 2023 at 8:00 - 8:30 am", textAlign: TextAlign.center,),
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      actions: [
        TextButton(
            onPressed: (){},
            child: Text("Cancel")
        ),
        TextButton(
            onPressed: (){},
            child: MaterialButton(
                padding: const EdgeInsets.all(10),
                color: AppColors.darkBlueTheme,
                onPressed: (){},
                child: Text(
                    "Book",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                )
            )
        ),
      ],
    );
  }

  pickupEstimate(){
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Select the category
              const Text(
                "Select the Category",
                style: TextStyle(
                  color: AppColors.darkBlueTheme,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Total
              RichText(
                  text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Total: ",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.darkBlueTheme,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        TextSpan(
                          text: "Rs. 180",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.lightBlueTheme,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                  )
              ),
            ],
          ),
        ),

        const SizedBox(height: 15),

        // Pick up estimate
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            "Pick up estimate",
            style: TextStyle(
              color: AppColors.darkBlueTheme,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 20),

        // Date and Time Picker
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Date Picker
              MaterialButton(
                padding: const EdgeInsets.all(15.0),
                onPressed: _showDatePicker,
                color: AppColors.lightBlueTheme,
                child: const Text(
                  "Pick a Date",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),

              // Time Picker
              MaterialButton(
                padding: const EdgeInsets.all(15.0),
                onPressed: _showTimePicker,
                color: AppColors.lightBlueTheme,
                child: const Text(
                  "Pick a Time",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 25),

        // Delivered By
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            "Delivered By",
            style: TextStyle(
              color: AppColors.darkBlueTheme,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 15),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "2-3 working days",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),

              Text(
                "Tomorrow (Rs. 50)",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 35),

        Center(
          child: MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(25.0),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return confirm();
                  }
              );
            },
            color: AppColors.darkBlueTheme,
            child: const Text(
              "Place Order",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        )
      ],
    );
  }

}
