import 'package:ServiceBox/const/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Referral extends StatefulWidget {
  const Referral({Key? key}) : super(key: key);

  @override
  State<Referral> createState() => _ReferralState();
}

class _ReferralState extends State<Referral> {

  String City = 'City';
  List city = ['City','Mumbai', 'Delhi', 'Kolkata', 'Bangalore'];

  String Locality = 'Locality';
  List locality = ['Locality','Bandra'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.logoGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
          child: ListView(
            children: [
              // Close button
              InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.close, color: Colors.white, size: 30,),
                  ],
                ),
              ),

              const SizedBox(height: 10,),

              Text(
                "New Referral",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10,),

              Text(
                "Please fill in the following details to submit the lead.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 5,),

              // RichText(
              //   text: TextSpan(
              //     text: "Fields marked with ",
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 15,
              //     ),
              //     children: [
              //       TextSpan(
              //         text: ' * ',
              //         style: TextStyle(
              //           color: Colors.red,
              //         ),
              //         children: [
              //           TextSpan(
              //             text: 'are mandatory.',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 15,
              //             )
              //           )
              //         ]
              //       ),
              //     ]
              //   ),
              // ),

              const SizedBox(height: 20,),

              // Phone Number
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

              const SizedBox(height: 20,),

              // First Name
              TextFormField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.name,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if(value!.isEmpty){
                    return "This field is required";
                  } else if(!RegExp(r'^[a-zA-Z]+$').hasMatch(value!)){
                    return "Enter a valid first name";
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
                  hintText: "First Name",
                  hintStyle: const TextStyle(
                    color: Colors.white38,
                  ),
                ),

              ),

              const SizedBox(height: 20,),

              TextFormField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.name,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if(value!.isEmpty){
                    return "This field is required";
                  } else if(!RegExp(r'^[a-zA-Z]+$').hasMatch(value!)){
                    return "Enter a valid first name";
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
                    hintText: "Last Name",
                    hintStyle: const TextStyle(
                      color: Colors.white38,
                    ),

                ),

              ),

              const SizedBox(height: 20,),

              // e-mail
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

              const SizedBox(height: 20,),

              TextFormField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.name,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if(value!.isEmpty){
                    return "This field is required";
                  } else if(!RegExp(r'^[a-zA-Z]+$').hasMatch(value!)){
                    return "Enter a valid city";
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
                  hintText: "City",
                  hintStyle: const TextStyle(
                    color: Colors.white38,
                  ),

                ),

              ),

              const SizedBox(height: 20,),

              TextFormField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.name,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if(value!.isEmpty){
                    return "This field is required";
                  } else if(!RegExp(r'^[a-zA-Z]+$').hasMatch(value!)){
                    return "Enter a valid locality";
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
                  hintText: "Locality",
                  hintStyle: const TextStyle(
                    color: Colors.white38,
                  ),

                ),

              ),

              const SizedBox(height: 20,),

              // City
              // DropdownButtonFormField<String>(
              //   decoration: InputDecoration(
              //     border: UnderlineInputBorder(
              //       borderSide: BorderSide(color: Colors.white38),
              //     )
              //   ),
              //   dropdownColor: Colors.black,
              //   style: TextStyle(
              //     color: Colors.white,
              //   ),
              //   isExpanded: true,
              //   icon: Icon(
              //     Icons.keyboard_arrow_down,
              //     color: Colors.white,
              //     size: 20,
              //   ),
              //   items: [
              //     DropdownMenuItem(
              //       child: Text(
              //         city[0],
              //         style: TextStyle(
              //             fontSize: 12,
              //             fontWeight: FontWeight.w700
              //         ),
              //       ),
              //       value: city[0],
              //     ),
              //     DropdownMenuItem(
              //       child: Text(
              //         city[1],
              //         style: TextStyle(
              //             fontSize: 12,
              //             fontWeight: FontWeight.w700
              //         ),
              //       ),
              //       value: city[1],
              //     ),
              //   ],
              //   value: City,
              //   onChanged: (String? newValue) {
              //     setState(() {
              //       City = newValue!;
              //     });
              //   },
              // ),

              // Gender
              Text(
                "Gender",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white38
                ),
              ),

              const SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Male
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: MediaQuery.of(context).size.width/2.2,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.male, color: Colors.white,),
                        const SizedBox(width: 10,),
                        Text(
                            "Male",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Female
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    width: MediaQuery.of(context).size.width/2.2,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.female, color: Colors.white,),
                        const SizedBox(width: 10,),
                        Text(
                          "Female",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30,),

              GestureDetector(
                onTap: (){},
                child: Container(
                  padding: const EdgeInsets.all(15),
                  // margin: const EdgeInsets.symmetric(horizontal: 75),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
