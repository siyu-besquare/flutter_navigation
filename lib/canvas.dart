import 'package:flutter/cupertino.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // 1
    Offset startPoint = Offset(0, 0);
    // 2
    Offset endPoint = Offset(size.width, size.height);
    // 3
    Paint paint = Paint();
    // 4
    canvas.drawLine(startPoint, endPoint, paint);
  }

  // 4
  @override
  bool shouldRepaint(MyPainter delegate) {
    return true;
  }
}
