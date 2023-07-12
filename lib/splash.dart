import 'package:flutter/material.dart';
import 'package:ServiceBox/const/CustomColors.dart';
import '../const/imagename.dart';
import 'package:ServiceBox/main.dart';
import 'package:ServiceBox/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async {
    await Future.delayed(Duration(seconds: 3), (){});
    Navigator.pushReplacement(context,
        MaterialPageRoute(
            builder: (context)=>Login()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.white,
        decoration: BoxDecoration(
          gradient: AppColors.logoGradient,
        ),
        child: Center(
          child: Container(
            child: Image.asset(newLogo, fit: BoxFit.cover, height: 200,),
          ),
        ),
      ),
    );
  }
}


// Roommate text
// RichText(
// text:
// const TextSpan(
// style:  TextStyle (
// fontSize:  55,
// fontWeight: FontWeight.w600,
// // height:  150,
// color:  Color(0xff000000),
// ),
// children:  [
// TextSpan(
// text:  'R',
// style:  TextStyle (
// // 'Poppins',
// fontSize:  55,
// fontWeight:  FontWeight.w600,
// // height:  150,
// color:  Color(0xff000000),
// ),
// ),
// TextSpan(
// text:  'OO',
// style:  TextStyle (
// // 'Poppins',
// fontSize:  55,
// fontWeight:  FontWeight.w600,
// // height:  150,
// color:  Color(0xffffffff),
// ),
// ),
// TextSpan(
// text:  'MMATE',
// style:  TextStyle (
// // 'Poppins',
// fontSize:  55,
// fontWeight:  FontWeight.w600,
// // height:  150,
// color:  Color(0xff000000),
// ),
// ),
// ],
// ),
// )