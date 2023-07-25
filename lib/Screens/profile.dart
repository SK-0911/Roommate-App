import 'package:ServiceBox/Screens/editProfile.dart';
import 'package:ServiceBox/Screens/sample.dart';
import 'package:flutter/material.dart';
import 'package:ServiceBox/Screens/wallet.dart';
import 'package:ServiceBox/const/CustomColors.dart';
import 'package:ServiceBox/utils/landscape_main.dart';

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
      backgroundColor: AppColors.newBlueTheme,
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

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>EditProfile()));
                      },
                      child: Icon(
                          Icons.edit,
                          color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
               SizedBox(height: MediaQuery.of(context).size.height*0.1 ),
              avatar(
                  Container(
                // height: MediaQuery.of(context).size.height,
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
                    // Name
                    Text(
                        "Mayank Sharma",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    // e-mail/phone number
                    Text(
                      "+91 1234 | abc@gmail.com",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.cake),
                        Text(" 09/11/2002")
                      ],
                    ),


                    //card view
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>Wallet()));
                        },
                        child: Card(
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                            decoration: BoxDecoration(
                              gradient: AppColors.logoGradient,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
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
                          // color: AppColors.darkBlueTheme,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
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

                    // My Account
                    InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>EditProfile()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.08,
                      child: ListTile(
                        leading: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Color(0xffFAECEC),
                                shape: BoxShape.circle
                            ),
                            child: Icon(Icons.person, color: Color(0xff851C1C),)
                        ),
                        title: Text(
                          "My Account",
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ),
                  ),

                    // tile("My Account", Icons.person, Color(0xff851C1C) /*2*/,Color(0xffFAECEC)/*1*/),
                    tile("Addresses", Icons.location_on, Color(0xff169800) ,Color(0xffEEFAEC)),

                    // Transaction history
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Wallet()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.08,
                        child: ListTile(
                          leading: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xffECEDFA),
                                  shape: BoxShape.circle
                              ),
                              child: Icon(Icons.history, color: Color(0xff1C4285),)
                          ),
                          title: Text(
                            "Transaction History",
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                    ),

                    // tile("Transaction History", Icons.history, Color(0xff1C4285) ,Color(0xffECEDFA)),

                    // Payments
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Wallet()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.08,
                        child: ListTile(
                          leading: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xffFFF2E3),
                                  shape: BoxShape.circle
                              ),
                              child: Icon(Icons.payment, color: Color(0xffCE6F00),)
                          ),
                          title: Text(
                            "Payments",
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                    ),
                    // tile("Payments", Icons.payment, Color(0xffCE6F00) ,Color(0xffFFF2E3)),
                    tile("Help & FAQ", Icons.help, Color(0xff97A700) ,Color(0xffFCFFDF))
                  ],
                ),
              )),

          ],
        ),
      ),
    );
  }
  tile(String name, IconData tileIcon, Color iconColor, Color iconContainer){
   return InkWell(
     onTap: (){},
     child: Container(
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
     ),
   );
  }
}
