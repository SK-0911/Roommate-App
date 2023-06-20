import 'package:flutter/material.dart';
import 'package:sb/const/CustomColors.dart';
import 'package:sb/utils/landscape_main.dart';
import 'package:sb/utils/landscape_main.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

  int balance=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LandscapeView(
        middleRatio: 2,
        middleWidget: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Stack(
            //   alignment: Alignment.center,
            //   children: [
            //     Icon(Icons.wallet_outlined, size: 400),
            //     Text(
            //       'Text',
            //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
            //     ),
            //   ],
            // ),


            Padding(
              padding: const EdgeInsets.all(5.0),
              child: IconButton(
                alignment: Alignment.topLeft,
                icon: Icon(Icons.arrow_back_outlined, size: 30),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),

            const SizedBox(height: 40),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: AppColors.darkBlueTheme,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wallet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Current Balance",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "₹ ${balance}",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Top Up
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffE9DAFF),
                        ),
                        child: Icon(
                          Icons.wallet_sharp,
                          size: 30,
                          color: Color(0xff7210FF),
                        )
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Top Up",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),

                // Withdraw
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffDEFFCF),
                        ),
                        child: Icon(
                          Icons.attach_money,
                          size: 30,
                          color: Color(0xff319B00),
                        )
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Withdraw",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),

                // Rewards
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFFEBBC),
                        ),
                        child: Icon(
                          Icons.wallet_giftcard,
                          size: 30,
                          color: Color(0xffFFB400),
                        )
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Rewards",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),

                // More
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffB9F7FF),
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          size: 30,
                          color: Color(0xff00BCD3),
                        )
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "More",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              color: AppColors.darkBlueTheme,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Cards",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  
                  Icon(
                      Icons.wallet_sharp,
                      size: 25,
                      color: Colors.white,
                  ),
                ],
              ),
            ),

            Container(
              height: 200,
              padding: EdgeInsets.all(20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Container(
                  //   color: Color(0xffED1C24),
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Icon(Icons.sim_card, color: Color(0xffF6C859),size: 30,),
                  //           Text("VISA")
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),

            const SizedBox(height: 30),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              color: AppColors.darkBlueTheme,
              child: Text(
                  "Redeem Exclusive Offers >",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
              ),
            )
          ],
        ),
      ) ,
    );
  }

}
