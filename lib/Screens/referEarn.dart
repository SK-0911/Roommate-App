import 'package:flutter/material.dart';

import '../const/CustomColors.dart';

class ReferEarn extends StatefulWidget {
  const ReferEarn({Key? key}) : super(key: key);

  @override
  State<ReferEarn> createState() => _ReferEarnState();
}

class _ReferEarnState extends State<ReferEarn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.logoGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
          child: ListView(
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.close, color: Colors.white, size: 30,),
                  ],
                ),
              ),

              const SizedBox(height: 10,),

              Row(
                children: [
                  Icon(Icons.card_giftcard, color: Colors.white, size: 30,),

                  const SizedBox(width: 10,),

                  Text(
                    "Refer online and Earn Rewards!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10,),

              Wrap(
                children: [
                  Text(
                    "Share this code with your network and win guaranteed rewards"
                        " for every successful booking with Service Box in a new city.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ]
              ),

              const SizedBox(height: 30,),

              Text(
                "Your Unique Referral Code (click to copy)",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 10,),

              Container(
                margin: EdgeInsets.only(right: MediaQuery.of(context).size.width/2),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white)
                ),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "MIH56397",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                        ),
                      ),

                      const SizedBox(width: 10,),

                      Icon(Icons.copy, color: Colors.white,)

                    ],
                  ),
              ),

              // Thick Divider

              const SizedBox(height: 30,),

              Text(
                "Earnings Till Date",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 10,),

              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2.2,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow)
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "₹0",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                            "Payouts Pending",
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(width: 10,),

                  Container(
                    width: MediaQuery.of(context).size.width/2.2,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green)
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "₹0",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Payouts Processed",
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Payouts will appear here",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
