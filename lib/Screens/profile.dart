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
    return Scaffold(
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

              const SizedBox(height: 20),

              Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          color: AppColors.lightBlueTheme,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          size: 80,
                          color: Colors.black,
                        ),
                      ),

                      const SizedBox(height: 15),

                      Text(
                        "+91 1234 | abc@gmail.com",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),

                      const SizedBox(height: 30),

                      Container(
                        child: Center(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.person),
                                title: Text(
                                  "My Account",
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_outlined),
                              ),
                              ListTile(
                                leading: Icon(Icons.location_on),
                                title: Text(
                                  "Addresses",
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_outlined),
                              ),
                              ListTile(
                                leading: Icon(Icons.payments),
                                title: Text(
                                  "Transaction History",
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_outlined),
                              ),
                              ListTile(
                                leading: Icon(Icons.attach_money),
                                title: Text(
                                  "Payments",
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_outlined),
                              ),
                              ListTile(
                                leading: Icon(Icons.chat),
                                title: Text(
                                  "Help & FAQ",
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_outlined),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
