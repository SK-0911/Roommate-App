import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sb/Screens/clothingList.dart';
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
  String SelectedItem ="";
  static List clothingItems = [
    Cloths('T-shirts', 0),
    Cloths('Pants', 0),
    Cloths('Socks', 0),
    Cloths('Bedsheets', 0),
    Cloths('Jeans', 0),
    Cloths('Others', 0),
  ];
  int shirts=0,pants=0;

  List displayItems = List.from(clothingItems);

  void filterList(String value){
    print("$value is the value ");
    setState(() {
      displayItems = clothingItems;
      displayItems = clothingItems.where((element) => element.cloth.toLowerCase().contains(value)).toList();
    });
  }

  int counterValue = 0;

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
                      selectClothingDialog(context);
                    },
                    child: const Text("Add Category",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white)
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    clothingCounter(0),
                    clothingCounter(1)
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    clothingCounter(2),
                    clothingCounter(3)
                  ],
                ),

                const SizedBox(height: 30),

                // Container(
                //   color: AppColors.darkBlueTheme,
                //   // padding: EdgeInsets.all(8.0),
                //   margin: EdgeInsets.symmetric(horizontal: 120),
                //   child: Center(
                //       child: Row(
                //         children: [
                //           Text(
                //               "Proceed",
                //               style: TextStyle(
                //                 color: Colors.white,
                //               ),
                //           ),
                //           Icon(
                //               Icons.local_laundry_service,
                //               color: Colors.white,
                //           )
                //         ],
                //       ),
                //     ),
                //   ),


              ],
            ),
          ],
        ),
      ),
    );
  }




  selectClothingDialog(context){

    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        content: TextField(
          onChanged: (val) => filterList(val),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            hintText: "Search",
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.4),
            ),
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Colors.white,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.only(bottom: 20),
            child: Divider(
              color: AppColors.lightBlueTheme,
              thickness: 2,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            // color: Colors.grey,
            height: 300,
            width: 300,
            child: ListView.separated(
                  itemCount: displayItems.length,
                  itemBuilder: (context, index) {
                    // bool isChecked = false;
                    return Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightBlueTheme,
                    ),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          log("message ${displayItems[index].cloth}");
                          SelectedItem=displayItems[index].cloth.toString();
                          Navigator.pop(context);
                        });
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.all(2.0),
                        title: Text(
                          displayItems[index].cloth,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 2);
                  },
              ),
            ),
        ],
      );
    }

    );
  }

  clothingCounter(int clothingIndex){

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Text(
                displayItems[clothingIndex].cloth,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              )
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              // Minus Icon for counter
              GestureDetector(
                onTap: () {
                  setState(() {
                    if(displayItems[clothingIndex].quantity>0){
                      displayItems[clothingIndex].quantity--;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  color: AppColors.lightGreenTheme,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),

              // Counter Value
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                color: AppColors.lightBlueTheme.withOpacity(0.2),
                child: Center(
                  child: Text(
                    "${displayItems[clothingIndex].quantity}",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),

              // Plus Icon for counter
              GestureDetector(
                onTap: (){
                  setState(() {
                    displayItems[clothingIndex].quantity++;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  color: AppColors.darkBlueTheme,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }


}
