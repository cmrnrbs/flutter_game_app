import 'package:flutter/material.dart';
import 'package:flutter_game_app/constants.dart';

class CustomGrid extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint();

    paint.color = bannerColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4.0;

    path.moveTo(0, size.height / 2);
    path.quadraticBezierTo(
        size.width / 2, size.height - 20, size.width, size.height / 2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
