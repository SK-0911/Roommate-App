import 'package:ServiceBox/const/CustomColors.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkBlueTheme,
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Terms & Conditions"),
      ),

      body: ListView(
        children: [
          Padding(
          padding: EdgeInsets.all(10),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Text("Copyright © 2023 Shubham Kumar (GitHub ID: SK-0911). \n\n"
                  "All rights reserved. This application, including its code and intellectual property, "
                  "is the exclusive property of Shubham Kumar and is not affiliated with or endorsed by ServiceBox company, "
                  "it's parent group (techmihirnaik Group), or any of its child companies. The app is strictly prohibited from being "
                  "sold for commercial use by ServiceBox company, its parent group (techmihirnaik Group), or any of its child companies. "
                  "Any violation of this restriction may result in legal fines, penalties, and other consequences under applicable law."
                  "\n\nUnauthorized copying or reproduction of this "
                  "application, in whole or in part, is strictly prohibited. Any infringement may result in legal action, "
                  "including but not limited to financial claims, injunctive relief, and any other remedies available "
                  "under applicable law. \n\nBy using this application, you agree to be bound by the following terms and conditions. "
                  "Unauthorized use or violation of these terms may result in penalties or legal action. "
                  "\n\nPlease read the terms carefully before using the app.",
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.left,
              )
            ],
          ),
        ),
        ]
      ),
    );
  }
}
