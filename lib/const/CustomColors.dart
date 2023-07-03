import 'package:flutter/material.dart';

class AppColors{
  static const darkBlueTheme = Color(0xff212E5C);
  static const lightBlueTheme = Color(0xff0D6FE5);
  static const lightGreenTheme = Color(0xff00BF63);
  static const lightblue = Color(0xff5e98de);
  static const yellow = Color(0xffffde84);
  static const lightOrange = Color(0xfffeb74d);
  static const pinkcard = Color(0xfffe9789);
  static const bluecard = Color(0xff44b8de);
  static const lightgreen = Color(0xffd9ffd9);
  static const lightblueT = Color(0xff68e1f1);
  static const greenTheme  = Color(0xff209377);
  static const home3  = Color(0xff126b59);
  static const home1st  = Color(0xff1d5dba);
  static const home4st  = Color(0xFF1C335D);
  static const home2st  = Color(0xFC3B693F);
  static var logoGradient = LinearGradient(
      colors: [AppColors.darkBlueTheme, AppColors.lightBlueTheme, AppColors.lightGreenTheme],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight
  );
}