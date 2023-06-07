
import 'package:flutter/material.dart';

class LandscapeView extends StatelessWidget {
  final int middleRatio;
  final Widget middleWidget;

  LandscapeView({required this.middleRatio, required this.middleWidget});

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    int ratio = MediaQuery.of(context).orientation==Orientation.portrait?0:width <= 550 ? 0 : 1;
    return Row(
      children: [
        Expanded(
          flex: ratio,
          child: SizedBox(),
        ),
        Expanded(
          flex: middleRatio,
          child: middleWidget,
        ),
        Expanded(
          flex: ratio,
          child: SizedBox(),
        )
      ],
    );
  }
}
