import 'package:flutter/material.dart';

import '../constants.dart';

class Triangle extends CustomPainter {
  final Side side;

  Triangle({required this.side});

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint();

    paint.color = bannerShadowColor;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 4.0;

    path.moveTo(0, 0);

    if (side == Side.Left) {
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0);
    } else if (side == Side.Right) {
      path.lineTo(size.width, 0);
      path.lineTo(0, size.height);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
