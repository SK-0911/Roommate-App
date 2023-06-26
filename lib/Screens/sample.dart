import 'package:ServiceBox/const/CustomColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget avatar(Widget child) {
  return Stack(
    alignment: Alignment.topCenter,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 61),
        child: Container(
            // height: 200,
            width: double.infinity,
            child: child),
      ),
      Container(
        width: 140,
        height: 120,
        decoration: ShapeDecoration(
          shape: CircleBorder(),
          shadows: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: CircleAvatar(
          child: Icon(Icons.person, size: 120, color: Colors.grey),
          backgroundColor: Colors.white,
        ),
      )
    ],
  );
}
