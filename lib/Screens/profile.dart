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

              Stack(
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height*0.1),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffffffff),
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
                                  ),
                                  color: AppColors.darkBlueTheme,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              //tiles for navigation
                              tile("My Account"),
                              tile("Addresses"),
                              tile("Transaction History"),
                              tile("Payments"),
                              tile("Help & FAQ")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height/0.3,
                      // ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,
                            border: Border.all(width: 1),
                            color: Colors.white
                          ),
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Icon(Icons.person,size: 100,color: Colors.black,),
                        ),
                      )
                    ],
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
  tile(String name){
   return Container(
     height: MediaQuery.of(context).size.height*0.08,
     child: ListTile(

        leading: Icon(Icons.chat),
        title: Text(
          name,
        ),
        trailing: Icon(Icons.arrow_forward_ios_outlined),
      ),
   );
  }
}
