import 'package:flutter/material.dart';
import 'package:flutter_game_app/constants.dart';

class BannerView extends CustomPainter {
  final Side side;

  BannerView({required this.side});

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint();

    paint.color = bannerColor;
    paint.style = PaintingStyle.fill;
    //paint.strokeWidth = 4.0;

    path.moveTo(0, 0);

    if (side == Side.Both) {
      path.lineTo(8, size.height / 2);
      path.lineTo(0, size.height);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width - 8, size.height / 2);
      path.lineTo(size.width, 0);
    } else if (side == Side.Left) {
      path.lineTo(8, size.height / 2);
      path.lineTo(0, size.height);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0);
    } else if (side == Side.Right) {
      path.lineTo(size.width, 0);
      path.lineTo(size.width - 8, size.height / 2);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
