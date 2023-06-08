import 'package:flutter/material.dart';
import 'package:sb/sample.dart';
import 'package:sb/signUp.dart';
import 'package:sb/main.dart';
import 'package:sb/utils/landscape_main.dart';

// import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';

class Login extends StatelessWidget {

  final controller;

  const Login({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f6ff),
      body: LandscapeView(
        middleRatio: 2,
        middleWidget: SafeArea(
          child: Center(
            child: Column(
            children: [
              const SizedBox(height: 50),
              const Text(
                "Service Box",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

            const SizedBox(height: 150),

            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                  child: TextField(
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
                      hintText: "Enter Mobile Number",
                      hintStyle: const TextStyle(
                        color: Colors.black,
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
                        // return ();
                        return const MyHomePage(
                          title: 'Service Box',
                        );
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
              ],
            ),
            ]
        ),
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