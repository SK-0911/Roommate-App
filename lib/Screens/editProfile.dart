import 'package:ServiceBox/const/CustomColors.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            decoration: BoxDecoration(
              gradient: AppColors.logoGradient,
            ),
          ),
        ),
        leading: BackButton(
          color: Colors.white,
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Edit Your Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // backgroundColor: Colors.transparent,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: ListView(
          children: [

            // Gender
            Text(
              "Gender",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
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
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.male, color: Colors.black,),
                      const SizedBox(width: 10,),
                      Text(
                        "Male",
                        style: TextStyle(
                          color: Colors.black,
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
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.female, color: Colors.black,),
                      const SizedBox(width: 10,),
                      Text(
                        "Female",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20,),

            // First Name
            TextFormField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.name,
                // controller: NameController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [

                ],
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
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    errorStyle: TextStyle(color: Colors.red),
                    fillColor: Colors.transparent,
                    filled: true,
                    hintText: "First Name",
                    hintStyle: const TextStyle(
                      color: Colors.black38,
                    )
                )
            ),

            const SizedBox(height: 20,),

            // Last Name
            TextFormField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.name,
                // controller: NameController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [

                ],
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
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    errorStyle: TextStyle(color: Colors.red),
                    fillColor: Colors.transparent,
                    filled: true,
                    hintText: "Last Name",
                    hintStyle: const TextStyle(
                      color: Colors.black38,
                    )
                )
            ),

            const SizedBox(height: 20,),

            Text(
              "Date of Birth",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),

            DOBInputField(
              inputDecoration: InputDecoration(
                filled: false
              ),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              showLabel: true,
              dateFormatType: DateFormatType.DDMMYYYY,
              autovalidateMode: AutovalidateMode.always,
            ),

            const SizedBox(height: 20,),

            TextFormField(
                style: TextStyle(color: Colors.black),
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
                // controller: EmailController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    errorStyle: TextStyle(color: Colors.red),
                    fillColor: Colors.transparent,
                    filled: true,
                    hintText: "Enter Your E-mail",
                    hintStyle: const TextStyle(
                      color: Colors.black38,
                    )
                )
            ),

            const SizedBox(height: 20,),

            IntlPhoneField(
                dropdownTextStyle: TextStyle(color: Colors.black),
                style: TextStyle(color: Colors.black),
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
                keyboardType: TextInputType.phone,
                showCountryFlag: false,
                initialCountryCode: 'IN',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // validator: (value){
                //   if(value!.isEmpty){
                //     return "This field is required";
                //   } else if(!RegExp(r'^[0-9]{10}$').hasMatch(value!)){
                //     return "Enter a valid 10-digit phone number";
                //   }else{
                //     return null;
                //   }
                // },
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                // controller: PhController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    errorStyle: TextStyle(color: Colors.red),
                    fillColor: Colors.transparent,
                    filled: true,
                    hintText: "Enter Your Number",
                    hintStyle: const TextStyle(
                        color: Colors.black38,
                        fontSize: 15
                    )
                )
            ),

          ],
        ),
      ),
    );
  }
}
