import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TriangleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: CustomPaint(
        painter: TrianglePainter(130), // Set the maximum height here
        size: Size(200, 200), // Set the size of the container accordingly
      ),
    );
  }
}
class TrianglePainter extends CustomPainter {
  final double maxHeight;

  TrianglePainter(this.maxHeight);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - maxHeight);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}