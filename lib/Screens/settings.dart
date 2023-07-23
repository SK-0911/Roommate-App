import 'package:ServiceBox/const/CustomColors.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  bool notificationValue = true;
  bool phonebookValue = true;

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
          "Settings",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              title: Text("Delete Account") ,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(thickness: 0.5, height: 0,),
            ),

            ListTile(
              title: Text("Push Notification"),
              trailing: Transform.scale(
                scale: 0.8,
                child: Switch.adaptive(
                  activeColor: AppColors.newBlueTheme,
                  value: notificationValue,
                  onChanged: (value) => setState(() {
                    this.notificationValue = value;
                  }),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(thickness: 0.5, height: 0,),
            ),

            ListTile(
              title: Text("goContacts Phonebook Sync"),
              trailing: Transform.scale(
                scale: 0.8,
                child: Switch.adaptive(
                  activeColor: AppColors.newBlueTheme,
                  value: phonebookValue,
                  onChanged: (value) => setState(() {
                    this.phonebookValue = value;
                  }),
                ),
              ),
            ),

            ListTile(
              title: Text(
                  "User Id/ Account Id",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "5758484",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            ListTile(
              title: Text(
                "UUID",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "dhje48949udh84",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


}
