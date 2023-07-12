import 'dart:async';
import 'dart:ui';

import 'package:ServiceBox/const/CustomColors.dart';
import 'package:date_count_down/countdown.dart';
import 'package:date_count_down/date_count_down.dart';
import 'package:flutter/material.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    var countTime = CountDown().timeLeft(
      DateTime.parse("2023-11-09"),
      "Launching Soon!",
      "days ",
      "hrs ",
      "mins ",
      "sec ",
      "d",
      "h",
      "m",
      "s",
      showLabel: false
    );

    List timeParts = countTime.split(" : ");

    int days = int.parse(timeParts[0]);
    int hours = int.parse(timeParts[1]);
    int mins = int.parse(timeParts[2]);
    int secs = int.parse(timeParts[3]);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.logoGradient,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                children: [Text(
                    "COMING SOON!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: Colors.white,
                  ),
                )],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/8,),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.4),
                        Colors.white.withOpacity(0.3),
                      ],
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                        spreadRadius: 4,
                        blurRadius: 10
                    )
                  ]
                ),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Days
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              // border: Border.all(color: Colors.white, width: 1.5)
                            ),
                            child: Text(
                              "$days",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),

                          Text(
                              "Days",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )

                        ],
                      ),

                      VerticalDivider(
                        color: Colors.white,
                        width: 5,
                        thickness: 2,
                        indent: 10,
                        endIndent: 10,
                      ),

                      // Hours
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.white, width: 1.5)
                            ),
                            child: Text(
                              "$hours",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),

                          Text(
                            "Hours",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )

                        ],
                      ),

                      VerticalDivider(
                        color: Colors.white,
                        width: 5,
                        thickness: 2,
                        indent: 10,
                        endIndent: 10,
                      ),

                      // Minutes
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.white, width: 1.5)
                            ),
                            child: Text(
                              "$mins",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),

                          Text(
                            "Mins",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )

                        ],
                      ),

                      VerticalDivider(
                        color: Colors.white,
                        width: 5,
                        thickness: 2,
                        indent: 10,
                        endIndent: 10,
                      ),

                      // Seconds
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.white, width: 1.5)
                            ),
                            child: Text(
                              "$secs",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),

                          Text(
                            "Secs",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              
              // Text(
              //   countTime,
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 20,
              //   ),
              // ),
              const SizedBox(height: 30,),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/3),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back, size: 20,),
                        const SizedBox(width: 10,),
                        Text(
                          "Go Back",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
