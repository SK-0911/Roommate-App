import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:ServiceBox/hostelInfo.dart';
import 'package:ServiceBox/utils/landscape_main.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'const/imagename.dart';
import 'const/screen.dart';
import 'const/CustomColors.dart';
import 'navbar.dart';

class Listing extends StatefulWidget {
  const Listing({Key? key}) : super(key: key);

  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {
  @override
  Widget build(BuildContext context) {
    bool isTablet = Screen().isTab(context);

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            decoration: BoxDecoration(
              gradient: AppColors.logoGradient,
            ),
          ),
        ),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.white)),
        // foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        title:Text("Hostel",style: TextStyle(color: Colors.white)),
      ),
      body: LandscapeView(
        middleRatio: 2,
        middleWidget: ListView(scrollDirection: Axis.vertical, children: [

          listofHostels(),
          listofHostels(),
          listofHostels(),
          listofHostels(),
          listofHostels()
        ]),
      ),
    );
  }

  listofHostels() {

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
                child:  AnotherCarousel(
                  images: [
                    Image.asset(washAndIron, fit: BoxFit.cover,),
                    Image.asset(chemicalWash, fit: BoxFit.cover,),
                    Image.asset(dryClean, fit: BoxFit.cover,),
                  ],
                  dotSize: 4.0,
                  dotIncreaseSize: 2.5,
                  dotSpacing: 15.0,
                  boxFit: BoxFit.scaleDown,
                  autoplay: true,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Hostel Name",
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
                  // Schedule a visit
                  InkWell(
                    onTap: () => showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Colors.transparent,
                          contentPadding: EdgeInsets.zero,
                          content: Container(
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                              gradient: AppColors.logoGradient,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "Your Name",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  cursorColor: Colors.white,
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.name,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    if(value!.isEmpty){
                                      return "This field is required";
                                    } else if(!RegExp(r'^[a-zA-Z]+$').hasMatch(value!)){
                                      return "Enter a valid name";
                                    }else{
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white38),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                      contentPadding: EdgeInsets.zero,
                                      errorStyle: TextStyle(color: Colors.white),
                                      fillColor: Colors.transparent,
                                      filled: true,
                                      hintText: "Enter Your Name",
                                      hintStyle: const TextStyle(
                                        color: Colors.white38,
                                      ),
                                  ),

                                ),

                                const SizedBox(height: 25,),

                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Your e-mail",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  cursorColor: Colors.white,
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.emailAddress,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  validator: (value){
                                      if(value!.isEmpty){
                                        return "This field is required";
                                      } else if(!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value!)){
                                        return "Enter a valid E-mail";
                                      }else{
                                        return null;
                                      }
                                    },
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white38),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    errorStyle: TextStyle(color: Colors.white),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    hintText: "Enter Your email",
                                    hintStyle: const TextStyle(
                                      color: Colors.white38,
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 25,),

                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Your Phone Number",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                IntlPhoneField(
                                  dropdownTextStyle: TextStyle(color: Colors.white),
                                  textAlignVertical: TextAlignVertical(y: 0),
                                  cursorColor: Colors.white,
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.phone,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  pickerDialogStyle: PickerDialogStyle(
                                      backgroundColor: Colors.white12,
                                      countryCodeStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      countryNameStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      searchFieldCursorColor: Colors.white,
                                      searchFieldInputDecoration: InputDecoration(
                                        suffixIcon: Icon(Icons.search, color: Colors.white,),
                                        hintText: "Search Countries",
                                        hintStyle: TextStyle(
                                          color: Colors.white30,
                                        ),
                                        focusColor: Colors.white,
                                      )
                                  ),
                                  showCountryFlag: false,
                                  initialCountryCode: 'IN',
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(10),
                                  ],
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white38),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    errorStyle: TextStyle(color: Colors.white),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    hintText: "Enter Your number",
                                    hintStyle: const TextStyle(
                                      color: Colors.white38,
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 25,),

                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Pick a Date",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),

                                DOBInputField(
                                  inputDecoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        color: Colors.white30
                                      ),
                                      filled: false
                                  ),
                                  cursorColor: Colors.white,
                                  style: TextStyle(color: Colors.white),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2024),
                                  showLabel: true,
                                  dateFormatType: DateFormatType.DDMMYYYY,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                ),
                                //
                                // Align(
                                //   alignment: Alignment.topLeft,
                                //   child: Text(
                                //     "Pick a Number",
                                //     style: TextStyle(
                                //       color: Colors.white,
                                //       fontWeight: FontWeight.bold,
                                //       fontSize: 15,
                                //     ),
                                //   ),
                                // ),

                                const SizedBox(height: 15,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        // gradient: AppColors.logoGradient,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: TextButton(
                                        onPressed: () => Navigator.pop(context, 'Cancel'),
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),

                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        // gradient: AppColors.logoGradient,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: TextButton(
                                        onPressed: () => Navigator.pop(context, 'Cancel'),
                                        child: Text(
                                          'Submit',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],

                            ),
                          ),

                        )
                    ),
                    child: Container(
                      width: Screen.isPortrait(context)
                          ? MediaQuery.of(context).size.width / 2.1
                          : MediaQuery.of(context).size.width / 4.7,
                      // height: 100,
                      child: Card(
                        color: AppColors.newBlueTheme,
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
                  ),

                  // Reserve Now button
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
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>HostelInfo()));
                        },
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
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

}
