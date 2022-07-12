import 'package:flutter/material.dart';

import '../constants.dart';
import 'banner_view.dart';
import 'triangle.dart';

class BannerHeader extends StatelessWidget {
  const BannerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomPaint(
                    painter: BannerView(side: Side.Left),
                    child: const SizedBox(
                      width: 84,
                      height: 64,
                    ),
                  ),
                  CustomPaint(
                    painter: BannerView(side: Side.Right),
                    child: const SizedBox(
                      width: 84,
                      height: 64,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    color: bannerColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomPaint(
                        painter: Triangle(side: Side.Left),
                        child: const SizedBox(
                          width: 44,
                          height: 20,
                        ),
                      ),
                      CustomPaint(
                        painter: Triangle(side: Side.Right),
                        child: const SizedBox(
                          width: 44,
                          height: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
