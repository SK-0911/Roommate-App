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

  static List clothingItems = [
    Cloths('T-shirts'),
    Cloths('Pants'),
    Cloths('Socks'),
    Cloths('Bedsheets'),
    Cloths('Jeans'),
    Cloths('Others'),
  ];

  List displayItems = List.from(clothingItems);

  void filterList(String value){
    setState(() {
      displayItems = clothingItems;
      displayItems = clothingItems.where((element) => element.cloth.toLowerCase().contains(value)).toList();
    });
  }



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


 CustomDialog(context){
    String? selectedItem;
    List<String> dropdownItems = [
      'T-shirts',
      'Pants',
      'Socks',
      'Bedsheets',
      'Jeans',
      'Others',
    ];
    return showDialog(context: context, builder:(BuildContext context){
      return AlertDialog(
        content: Text("Add Category"),
        actions: [
          Center(
            child: DropdownButton<String>(
              value: selectedItem,
              items: dropdownItems.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: Text(item)),
                );
              }).toList(),
              onChanged: ( newValue) {
               setState(() {
                 selectedItem = newValue;

               });
              },
            ),),
        ],
      );
    }
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
            padding: EdgeInsets.symmetric(horizontal: 15),
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
                    child: ListTile(
                      // trailing: Checkbox(
                      //   value: isChecked,
                      //   // activeColor: AppColors.darkBlueTheme,
                      //   onChanged: (bool? value) {
                      //     setState(() {
                      //       isChecked = value ?? false;
                      //     });
                      //   },
                      // ),
                      contentPadding: EdgeInsets.all(5.0),
                      title: Text(
                        displayItems[index].cloth,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 5);
                  },
              ),
            ),
        ],
      );
    }
    );
  }

}
