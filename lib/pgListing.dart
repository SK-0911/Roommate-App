import 'package:flutter/material.dart';
import 'package:sb/utils/landscape_main.dart';
import 'const/screen.dart';
import 'const/CustomColors.dart';
import 'navbar.dart';

class PGListing extends StatefulWidget {
  const PGListing({Key? key}) : super(key: key);

  @override
  State<PGListing> createState() => _PGListingState();
}

class _PGListingState extends State<PGListing> {
  @override
  Widget build(BuildContext context) {
    bool isTablet = Screen().isTab(context);

    return Scaffold(
      body: LandscapeView(
        middleRatio: 2,
        middleWidget: ListView(scrollDirection: Axis.vertical, children: [

          listofPG(),
          listofPG(),
          listofPG(),
          listofPG(),
          listofPG()
        ]),
      ),
    );
  }

  listofPG() {

    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              spreadRadius: 0.2,
            )
          ],
          // border: Border.all(color: Colors.black),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black87,
                // image: DecorationImage(
                //   image: NetworkImage(),
                // ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "PG Name",
              style: TextStyle(
                color: AppColors.darkBlueTheme,
                fontWeight: FontWeight.w900,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Mumbai,",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  "Starting at",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Maharashtra, India",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  "Rs. 10,000/Month",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(
                  Icons.female,
                  color: AppColors.darkBlueTheme,
                ),
                SizedBox(width: 5),
                Text(
                  "Male, Female",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: AppColors.darkBlueTheme,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Free Internet access, 24 Hours Security, 12+ more",
              style: TextStyle(
                fontSize: 15,
                color: AppColors.darkBlueTheme,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: Screen.isPortrait(context)
                      ? MediaQuery.of(context).size.width / 2.1
                      : MediaQuery.of(context).size.width / 4.7,
                  // height: 100,
                  child: Card(
                    color: AppColors.lightBlueTheme,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: const Center(
                        child: Text(
                          "SCHEDULE A VISIT",
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
                      ? MediaQuery.of(context).size.width / 2.5
                      : MediaQuery.of(context).size.width / 4,
                  // height: 100,
                  child: Card(
                    color: AppColors.darkBlueTheme,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: const Center(
                        child: Text(
                          "RESERVE NOW",
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
            )
          ],
        ),
      ),
    );
  }

}
