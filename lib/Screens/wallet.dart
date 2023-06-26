import 'package:flutter/material.dart';
import 'package:ServiceBox/const/CustomColors.dart';
import 'package:ServiceBox/const/imagename.dart';
import 'package:ServiceBox/utils/landscape_main.dart';
import 'package:ServiceBox/utils/landscape_main.dart';

// import '../sample.dart';

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

            // const SizedBox(height: 10),

            Center(
                child: Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width/2.3),
                    Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        child: Image.asset(
                          cash,
                          fit: BoxFit.cover,
                        )
                    ),
                  ],
                )
            ),

            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: AppColors.darkBlueTheme,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Wallet',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),

                          Container(
                            height: 50,

                            child: Image.asset(button, fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
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
              ],
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

                  Image.asset(addCard, fit: BoxFit.cover, height: 30,),
                ],
              ),
            ),

            // Cards
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 20),

                  AspectRatio(
                    aspectRatio: 5/3,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF0000FF),
                            Color(0XFF377CFF),
                          ]
                        )
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(chip, fit: BoxFit.cover, width: 40,),
                              Image.asset(mastercard, fit: BoxFit.cover, width: 50,)
                            ],
                          ),

                          const SizedBox(height: 15),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "**** **** **** 2345",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),

                          const SizedBox(height: 15),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Card Holder Name",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8
                                  ),
                                ),
                              ),

                              Container(
                                child: Text(
                                  "Expiry Date",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8
                                  ),
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: 5),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Mayank Sharma",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                              Container(
                                child: Text(
                                  "02/03",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),

                  AspectRatio(
                    aspectRatio: 5/3,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFFF83D34),
                                Color(0xFFFFA351),
                              ]
                          )
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(chip, fit: BoxFit.cover, width: 40,),
                              Image.asset(visa, fit: BoxFit.cover, width: 50, color: Colors.white,)
                            ],
                          ),

                          const SizedBox(height: 15),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "**** **** **** 2345",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),

                          const SizedBox(height: 15),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Card Holder Name",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8
                                  ),
                                ),
                              ),

                              Container(
                                child: Text(
                                  "Expiry Date",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8
                                  ),
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: 5),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Mayank Sharma",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                              Container(
                                child: Text(
                                  "02/03",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),

                  AspectRatio(
                    aspectRatio: 5/3,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFF990099),
                                Color(0xFF660066),
                              ]
                          )
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(chip, fit: BoxFit.cover, width: 40,),
                              Image.asset(mastercard, fit: BoxFit.cover, width: 50,)
                            ],
                          ),

                          const SizedBox(height: 15),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "**** **** **** 2345",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),

                          const SizedBox(height: 15),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Card Holder Name",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8
                                  ),
                                ),
                              ),

                              Container(
                                child: Text(
                                  "Expiry Date",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8
                                  ),
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: 5),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Mayank Sharma",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                              Container(
                                child: Text(
                                  "02/03",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),

                  AspectRatio(
                    aspectRatio: 5/3,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [
                                //#ED1C24, #4F339A
                                Color(0xFFED1C24),
                                Color(0xFF4F339A),
                              ]
                          )
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(chip, fit: BoxFit.cover, width: 40,),
                              Image.asset(visa, fit: BoxFit.cover, width: 50, color: Colors.white,)
                            ],
                          ),

                          const SizedBox(height: 15),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "**** **** **** 2345",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),

                          const SizedBox(height: 15),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Card Holder Name",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8
                                  ),
                                ),
                              ),

                              Container(
                                child: Text(
                                  "Expiry Date",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8
                                  ),
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: 5),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Mayank Sharma",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                              Container(
                                child: Text(
                                  "02/03",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),
                ],
              ),
            ),

            const SizedBox(height: 10),

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
            ),

            SizedBox(height: 20),

            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 20),
                  offer(),
                  const SizedBox(width: 10),
                  offer(),
                  const SizedBox(width: 10),
                  offer(),
                  const SizedBox(width: 20),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ) ,
    );
  }

  offer() => AspectRatio(
    aspectRatio: 4.5/3,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.darkBlueTheme,
      ),
      child: Column(
        children:  [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Get 20% Cashback",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          SizedBox(height: 5),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "on using HDFC Bank Cards",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),

          SizedBox(height: 40),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "*terms and conditions apply",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    ),
  );

}
