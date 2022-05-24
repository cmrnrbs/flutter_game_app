import 'package:flutter/material.dart';
import 'package:flutter_game_app/constants.dart';
import 'package:flutter_game_app/customviews/banner_view.dart';
import 'package:flutter_game_app/customviews/custom_grid.dart';
import 'dart:math' as math;

import 'package:flutter_game_app/customviews/triangle.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'H',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E9B91),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 100,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomPaint(
                            painter: BannerView(side: Side.Left),
                            child: const SizedBox(
                              width: 80,
                              height: 56,
                            ),
                          ),
                          CustomPaint(
                            painter: BannerView(side: Side.Right),
                            child: const SizedBox(
                              width: 80,
                              height: 56,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Column(
                          children: [
                            Container(
                              height: 56,
                              color: bannerColor,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomPaint(
                                  painter: Triangle(side: Side.Left),
                                  child: const SizedBox(
                                    width: 44,
                                    height: 44,
                                  ),
                                ),
                                CustomPaint(
                                  painter: Triangle(side: Side.Right),
                                  child: const SizedBox(
                                    width: 44,
                                    height: 44,
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
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(54, 0, 57, 0),
                child: SizedBox(
                  height: 56,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: redColor,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('Player 1')
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('Player 2'),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: redColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 20,
                      ),
                      CustomPaint(
                        painter: CustomGrid(),
                        child: Container(
                          height: 20,
                        ),
                      ),
                      CustomPaint(
                        painter: CustomGrid(),
                        child: Container(
                          height: 20,
                        ),
                      ),
                      CustomPaint(
                        painter: CustomGrid(),
                        child: Container(
                          height: 20,
                        ),
                      ),
                      CustomPaint(
                        painter: CustomGrid(),
                        child: Container(
                          height: 20,
                        ),
                      ),
                      Container(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Transform.rotate(
                angle: math.pi / 2,
                child: Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 20,
                      ),
                      CustomPaint(
                        painter: CustomGrid(),
                        child: Container(
                          height: 20,
                        ),
                      ),
                      CustomPaint(
                        painter: CustomGrid(),
                        child: Container(
                          height: 20,
                        ),
                      ),
                      CustomPaint(
                        painter: CustomGrid(),
                        child: Container(
                          height: 20,
                        ),
                      ),
                      CustomPaint(
                        painter: CustomGrid(),
                        child: Container(
                          height: 20,
                        ),
                      ),
                      Container(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: 0,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 106 * 4,
                    color: Colors.black.withOpacity(.4),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                crossAxisCount: 5,
                children: List.generate(
                    25,
                    (index) => Padding(
                          padding:
                              const EdgeInsets.only(left: 6.0, bottom: 4.0),
                          child: InkWell(
                            onTap: () => print(index),
                            child: const SizedBox(
                              child: Center(
                                child: Icon(
                                  Icons.close_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomPaint(
                painter: BannerView(side: Side.Both),
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          color: Colors.redAccent,
                        ),
                        Container(
                          width: 64,
                          height: 64,
                          color: Colors.yellowAccent,
                        ),
                        Container(
                          width: 64,
                          height: 64,
                          color: Colors.greenAccent,
                        ),
                        Container(
                          width: 64,
                          height: 64,
                          color: Colors.blueAccent,
                        ),
                      ],
                    ),
                  ),
                  height: 64,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
