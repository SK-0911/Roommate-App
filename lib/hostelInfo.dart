import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:sb/const/CustomColors.dart';
import 'package:sb/utils/landscape_main.dart';

import 'const/imagename.dart';

class HostelInfo extends StatefulWidget {
  const HostelInfo({Key? key}) : super(key: key);

  @override
  State<HostelInfo> createState() => _HostelInfoState();
}

class _HostelInfoState extends State<HostelInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkBlueTheme,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Hostel Name",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: LandscapeView(
        middleRatio: 2,
        middleWidget: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Hostel Pics
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: AnotherCarousel(
                images: [
                  Image.asset(
                    washAndIron,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    chemicalWash,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    dryClean,
                    fit: BoxFit.cover,
                  ),
                ],
                dotSize: 4.0,
                dotIncreaseSize: 2.5,
                dotSpacing: 15.0,
                boxFit: BoxFit.scaleDown,
                autoplay: true,
                animationDuration: Duration(seconds: 2),
              ),
            ),

            const SizedBox(height: 15),
            // Festures title
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Features",
                style: TextStyle(
                  color: AppColors.darkBlueTheme,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                caspule("2 BedRoom", Icons.bed,AppColors.darkBlueTheme),
                caspule("Wifi", Icons.wifi,AppColors.lightblue),
                caspule("1 BathRoom",Icons.bathtub_outlined,AppColors.lightOrange)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                caspule("Contact No",Icons.call,AppColors.pinkcard),

                caspule("AC Rooms",Icons.ac_unit,AppColors.greenTheme)
              ],
            ),
            // Property Details title
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Property Details",
                style: TextStyle(
                  color: AppColors.darkBlueTheme,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xffE0EC5656),
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.bed,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Name: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xffE56D4C41),
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.summarize,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Overview: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: AppColors.lightblue,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Type: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: AppColors.lightGreenTheme,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.single_bed,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "For: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xffED1C24), shape: BoxShape.circle),
                          child: Icon(
                            Icons.wifi,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Amenities: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Location",
                style: TextStyle(
                  color: AppColors.darkBlueTheme,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xff5929E3), shape: BoxShape.circle),
                          child: Icon(
                            Icons.place_sharp,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Near By Places: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: AppColors.lightblue,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.school,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Near By Colleges: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Things You Should Know",
                style: TextStyle(
                  color: AppColors.darkBlueTheme,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xff2FA73B), shape: BoxShape.circle),
                          child: Icon(
                            Icons.rule,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Check In Rules: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xffC48E6A), shape: BoxShape.circle),
                          child: Icon(
                            Icons.assignment,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Check In Documents: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget caspule(String Title, IconData icon,Color color) {
    return Container(

      width: MediaQuery.of(context).size.width / 3.3,
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
      decoration: BoxDecoration(
          color: color,
          // shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,color: Colors.white),
          SizedBox(width: 2,),
          Text(Title,style: TextStyle(color: Colors.white,height: 1.5)),
        ],
      ),
    );
  }
}
