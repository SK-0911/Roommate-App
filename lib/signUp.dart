import 'package:ServiceBox/const/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../Screens/otp.dart';
import 'main.dart';
import 'login.dart';
import 'Screens/otp.dart';

import 'const/imagename.dart';

class SignUp extends StatelessWidget {

  final NameController;
  final PhController;
  final EmailController;

  const SignUp({Key? key, this.NameController, this.EmailController, this.PhController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff2f6ff),
        body: Container(
          decoration: BoxDecoration(
            gradient: AppColors.logoGradient,
          ),
          child: SafeArea(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [Center(
                child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Center(
                          child: Image.asset(newLogo, fit: BoxFit.fitWidth, height: 100,)
                      ),

                      const SizedBox(height: 30),

                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 40),

                          // Name Input Field
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35.0),
                            child: TextFormField(
                                style: TextStyle(color: Colors.white),
                                keyboardType: TextInputType.name,
                                controller: NameController,
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
                                      borderSide: BorderSide(color: Colors.white38),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    errorStyle: TextStyle(color: Colors.white),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    hintText: "Enter Your Name",
                                    hintStyle: const TextStyle(
                                      color: Colors.white38,
                                    )
                                )
                            ),
                          ),

                          const SizedBox(height: 15),

                          // Ph no. Input Field
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35.0),
                            child: IntlPhoneField(
                                style: TextStyle(color: Colors.white),
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
                                controller: PhController,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.white38),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    errorStyle: TextStyle(color: Colors.white),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    hintText: "Enter Your Number",
                                    hintStyle: const TextStyle(
                                      color: Colors.white38,
                                      fontSize: 15
                                    )
                                )
                            ),
                          ),

                          const SizedBox(height: 15),

                          // E-mail input field
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35.0),
                            child: TextFormField(
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
                                controller: EmailController,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.white38),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    errorStyle: TextStyle(color: Colors.white),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    hintText: "Enter Your E-mail",
                                    hintStyle: const TextStyle(
                                      color: Colors.white38,
                                    )
                                )
                            ),
                          ),

                          const SizedBox(height: 30),

                          // Log In Button
                          GestureDetector(
                            onTap: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context){
                                    return Otp();
                                  }
                              ),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              margin: const EdgeInsets.symmetric(horizontal: 75),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 30),

                          //or continue with
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 75),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    color: Colors.grey[400],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "Or Continue with",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),

                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 25),

                          //google + fb sign in
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              //Google logo
                              squareTile(imgPath: 'assets/icons/google.png'),

                              SizedBox(width: 15),

                              // FB logo
                              squareTile(imgPath: 'assets/icons/facebook.png'),

                              SizedBox(width: 15),

                              // Apple logo
                              squareTile(imgPath: 'assets/icons/apple.png')
                            ],
                          ),

                          const SizedBox(height: 25),

                          // Register Now
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already a Member? ",
                                  style: TextStyle(color: Colors.white),
                                ),

                                GestureDetector(
                                  onTap: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context){
                                          return Login();
                                        }
                                    ),
                                  ),
                                  child: const Text(
                                    "Log In",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.newBlueTheme,
                                        decoration: TextDecoration.underline
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ],
                      ),
                    ]
                ),
              )],
            ),
          ),
        )
    );
  }
}


class squareTile extends StatelessWidget {

  final String imgPath;
  const squareTile({
    super.key,
    required this.imgPath
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        // color: Colors.grey[200]
      ),
      child: Image.asset(
        imgPath,
        height: 25,
      ),
    );
  }
}