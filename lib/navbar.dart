import 'package:flutter/material.dart';
import 'const/CustomColors.dart';
import 'const/screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    bool isTablet = Screen().isTab(context);

    return  Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.person),
          backgroundColor: AppColors.lightBlueTheme,
          elevation: 0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar:  SafeArea(
          child: Container(
            margin: Screen().isTab(context)
                ? EdgeInsets.only(
                left: Screen.width(context) / 2.8,
                right: Screen.width(context) / 2.8,
                bottom: 30)
                : const EdgeInsets.all(0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Screen().isTab(context)
                        ? Colors.black
                        : Colors.transparent),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(Screen().isTab(context) ? 16 : 0),
                    bottomRight: Radius.circular(Screen().isTab(context) ? 16 : 0)),
                boxShadow: [
                  BoxShadow(
                      color:Colors.grey,
                      blurRadius: isTablet?7:1,
                      spreadRadius: isTablet?0.3:-1,offset: isTablet?const Offset(0,0):const Offset(0,-2)),
                ]
            ),
            height: 75,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _bottomIconsStyle(
                    context, 0, 'Home'),
                _bottomIconsStyle(
                    context, 1, 'My Booking'),
                _bottomIconsStyle(
                    context, 2, 'Offers'),
                _bottomIconsStyle(
                    context, 3, 'more'),
              ],
            ),
          ),
        )
    );
  }

  Widget _bottomIconsStyle(BuildContext context, int index, String title) {
    final theme = Theme.of(context);
    return SizedBox(
      child: InkWell(
        onTap: () {

        },
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                index==0?Icons.home:index==1?Icons.query_builder_outlined:index==2?Icons.local_offer:Icons.more_horiz,
                size: 21,
                // width: 21,
                // height: 21,
                color:
                _selectedIndex == index ? Colors.blue : Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 12,
                    color: _selectedIndex == index
                        ?Colors.blue : Colors.grey
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
