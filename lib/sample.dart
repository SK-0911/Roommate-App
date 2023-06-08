import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class smaplepage extends StatefulWidget {
  const smaplepage({Key? key}) : super(key: key);

  @override
  State<smaplepage> createState() => _smaplepageState();
}

class _smaplepageState extends State<smaplepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset(
          'assets/icons/cardflat.png',
          // Additional properties can be added here
        ),
      ),
    );
  }
}
