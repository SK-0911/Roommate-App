import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sb/const/CustomColors.dart';

import '../const/customdialog.dart';
import '../const/imagename.dart';

class bookingDetails extends StatefulWidget {
  String typeOfWash;
  String title;

  bookingDetails(this.typeOfWash, this.title, {Key? key}) : super(key: key);

  @override
  State<bookingDetails> createState() => _bookingDetailsState();
}

class _bookingDetailsState extends State<bookingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              // margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(15.0),
              color: AppColors.lightgreen,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Icon, User
                  Row(
                    children: const [
                      Icon(
                        Icons.person,
                        size: 30,
                        color: AppColors.darkBlueTheme,
                      ),
                      const SizedBox(width: 10),

                      Text(
                        "Namaste, Mayank",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),

                  // Bell icon
                  const Icon(
                    Icons.notifications,
                    size: 25,
                    color: AppColors.darkBlueTheme,
                  )
                ],
              ),
            ),

            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    color: AppColors.lightgreen,
                    image: DecorationImage(
                        image: AssetImage(widget.title == "Wash and Iron"
                            ? washAndIron
                            : widget.title == "Dry Clean"
                                ? dryClean
                                : widget.title == "Ironing"
                                    ? Ironing
                                    : chemicalWash),
                        fit: BoxFit.contain,
                        alignment: Alignment.center),
                  ),
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text:
                     TextSpan(
                      style:  TextStyle (
                        fontSize:  55,
                        fontWeight: FontWeight.w600,
                        // height:  150,
                        color:  Color(0xff000000),
                      ),
                      children:  [
                        TextSpan(
                          text:  'Select your Clothing\n',
                          style:  TextStyle (
                            // 'Poppins',
                            fontSize:  25,
                            fontWeight:  FontWeight.w600,
                            // height:  150,
                            color:  Color(0xff212E5C),
                          ),
                        ),

                        TextSpan(
                          text: "${widget.title}",
                          style:  TextStyle (
                            // 'Poppins',
                            fontSize:  25,
                            fontWeight:  FontWeight.w600,
                            // height:  150,
                            color:  Color(0xff00BF63),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text("Clothing Categories",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blue)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey.shade50,
                    ),
                    onPressed: () {
                      CustomDialog(context);
                    },
                    child: Text("Add Category",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
