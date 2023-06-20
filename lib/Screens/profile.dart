import 'package:flutter/material.dart';
import 'package:sb/const/CustomColors.dart';
import 'package:sb/utils/landscape_main.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    int balance=0;

    return Scaffold(
      // bottomSheet: BottomSheet(builder: (context) => ,),
      backgroundColor: AppColors.darkBlueTheme,
      body: LandscapeView(
        middleRatio: 2,
        middleWidget: ListView(
          scrollDirection: Axis.vertical,
          children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: Icon(
                              Icons.arrow_back,
                              size: 20,
                              color: Colors.white,
                            )
                        ),
                        const SizedBox(width: 10),
                        Text(
                            "My Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                        ),
                      ],
                    ),

                    Icon(
                        Icons.edit,
                        color: Colors.white,
                    )
                  ],
                ),
              ),
              // const SizedBox(height: 20),

              Container(
                // color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.1),
                      Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child:   Column(
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                              Text(
                                "+91 1234 | abc@gmail.com",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                              //card view
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Card(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height*0.2,
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "My Wallet",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white
                                          ),
                                        ),

                                        const SizedBox(height: 10),

                                        Text(
                                          "₹ ${balance}",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  color: AppColors.darkBlueTheme,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),

                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Account Settings",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 15),

                              //tiles for navigation
                              tile("My Account", Icons.person, Color(0xff851C1C) ,Color(0xffFAECEC)),
                              tile("Addresses", Icons.location_on, Color(0xff169800) ,Color(0xffEEFAEC)),
                              tile("Transaction History", Icons.history, Color(0xff1C4285) ,Color(0xffECEDFA)),
                              tile("Payments", Icons.payment, Color(0xffCE6F00) ,Color(0xffFFF2E3)),
                              tile("Help & FAQ", Icons.help, Color(0xff97A700) ,Color(0xffFCFFDF))
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
  tile(String name, IconData tileIcon, Color iconColor, Color iconContainer){
   return Container(
     height: MediaQuery.of(context).size.height*0.08,
     child: ListTile(

        leading: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconContainer,
              shape: BoxShape.circle
            ),
            child: Icon(tileIcon, color: iconColor,)
        ),
        title: Text(
          name,
        ),
        trailing: Icon(Icons.arrow_forward_ios_outlined),
      ),
   );
  }
}
