import 'package:flutter/material.dart';

class DiagonalContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final Color color;

  DiagonalContainer({required this.child, required this.height, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Stack(
        children: [
          CustomPaint(
            painter: _DiagonalPainter(color),
            child: Container(),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: child,
          ),
        ],
      ),
    );
  }
}

class _DiagonalPainter extends CustomPainter {
  final Color color;

  _DiagonalPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height - size.width * 0.4);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
