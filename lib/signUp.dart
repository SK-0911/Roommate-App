import 'package:flutter/material.dart';
import 'package:sb/main.dart';
import 'package:sb/login.dart';

import 'const/imagename.dart';
import 'homePage.dart';

class SignUp extends StatelessWidget {

  final NameController;
  final PhController;
  final EmailController;

  const SignUp({Key? key, this.NameController, this.EmailController, this.PhController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff2f6ff),
        body: SafeArea(
          child: Center(
            child: Column(
                children: [
                  const SizedBox(height: 30),
                  Center(
                      child: Image.asset(sbText, fit: BoxFit.cover, width: 200,)
                  ),

                  const SizedBox(height: 60),

                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 40),

                      // Input Field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: TextField(
                            controller: NameController,
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
                                hintText: "Enter Your Name",
                                hintStyle: const TextStyle(
                                  color: Colors.black,
                                )
                            )
                        ),
                      ),

                      const SizedBox(height: 15),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: TextField(
                            controller: PhController,
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
                                hintText: "Enter Your Mobile Number",
                                hintStyle: const TextStyle(
                                  color: Colors.black,
                                )
                            )
                        ),
                      ),

                      const SizedBox(height: 15),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: TextField(
                            controller: EmailController,
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
                                hintText: "Enter Your E-mail",
                                hintStyle: const TextStyle(
                                  color: Colors.black,
                                )
                            )
                        ),
                      ),

                      const SizedBox(height: 35),

                      // Log In Button
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context){
                                return MyHomePage(
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
                              style: TextStyle(color: Colors.grey[700]),
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