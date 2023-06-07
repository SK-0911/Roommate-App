import 'package:flutter/material.dart';
import 'package:sb/main.dart';
import 'package:sb/login.dart';

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
    await Future.delayed(Duration(seconds: 1), (){});
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
        color: const Color(0xff98A3f4),
        child: Center(
          child: Container(
            child:
            RichText(
              text:
              const TextSpan(
                style:  TextStyle (
                  fontSize:  55,
                  fontWeight: FontWeight.w600,
                  // height:  150,
                  color:  Color(0xff000000),
                ),
                children:  [
                  TextSpan(
                    text:  'R',
                    style:  TextStyle (
                      // 'Poppins',
                      fontSize:  55,
                      fontWeight:  FontWeight.w600,
                      // height:  150,
                      color:  Color(0xff000000),
                    ),
                  ),
                  TextSpan(
                    text:  'OO',
                    style:  TextStyle (
                      // 'Poppins',
                      fontSize:  55,
                      fontWeight:  FontWeight.w600,
                      // height:  150,
                      color:  Color(0xffffffff),
                    ),
                  ),
                  TextSpan(
                    text:  'MMATE',
                    style:  TextStyle (
                      // 'Poppins',
                      fontSize:  55,
                      fontWeight:  FontWeight.w600,
                      // height:  150,
                      color:  Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
