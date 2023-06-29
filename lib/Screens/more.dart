import 'package:ServiceBox/const/CustomColors.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkBlueTheme,
        title: Text("More Options"),
      ),
      body: ListView(
        children: [
          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.question_mark),
            title: Text("More Options 1"),
            trailing: Icon(Icons.arrow_forward_ios),
        ),

          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.question_mark),
            title: Text("More Options 2"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          ListTile(
            tileColor: Colors.white,
            leading: Icon(Icons.question_mark),
            title: Text("More Options 3"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          
          const SizedBox(height: 10),
          Center(
            child: Text(
              "Copyright © 2023 Shubham Kumar",
              style: TextStyle(
                color: Colors.grey[600]
              ),
            ),
          )
        ],
      ),
    );
  }
}
