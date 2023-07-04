import 'package:ServiceBox/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ServiceBox/const/imagename.dart';
import 'package:ServiceBox/signUp.dart';
import 'package:ServiceBox/utils/landscape_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'MyHomePage.dart';

class Login extends StatelessWidget {

  final controller;

  final GlobalKey _formKey = GlobalKey();

  Login({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff2f6ff),
      body: LandscapeView(
        middleRatio: 2,
        middleWidget: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                    child: Image.asset(sbText, fit: BoxFit.cover, width: 200,)
                ),
              ),
              Spacer(),
              Text(
                "Log In",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 50),

              // Input Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: IntlPhoneField(
                    keyboardType: TextInputType.phone,
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
                    controller: controller,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText: "Enter Your Number",
                        hintStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15
                        )
                    )
                ),
              ),

              const SizedBox(height: 40),

              // Log In Button
              InkWell(
                onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context){
                      // return smaplepage();
                      return MyHomePage(title: "");
                    }
                ),
                ),
                child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 60),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
                ),
              ),

              const SizedBox(height: 35),

              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[500],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or Continue with",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),

                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

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

              const SizedBox(height: 30),

              // Register Now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a Member? ",
                    style: TextStyle(color: Colors.grey[700]),
                  ),

                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return const SignUp();
                          }
                      ),
                    ),
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0D6FE5),
                          decoration: TextDecoration.underline
                      ),
                    ),
                  ),
                ]
              ),
              Spacer(),
            ]
        ),
          ),
        ),
      )
    );
  }
}



// Class for Social Media Icons
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
          border: Border.all(color: Colors.grey),
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