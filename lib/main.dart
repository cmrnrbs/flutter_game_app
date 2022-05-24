import 'package:flutter/material.dart';
import 'package:flutter_game_app/customviews/banner_header.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'customviews/banner_view.dart';
import 'customviews/custom_grid.dart';
import 'dart:math' as math;

import 'customviews/triangle.dart';

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
      backgroundColor: bgColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.topCenter,
              child: BannerHeader(),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: SizedBox(
                  height: 64,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.black),
                                  shape: BoxShape.circle,
                                  color: redColor,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                  child: Text(
                                'darkNessII',
                                style: GoogleFonts.macondo(fontSize: 12),
                              ))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text('xxxWarriorxxx',
                                      style:
                                          GoogleFonts.macondo(fontSize: 12))),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: redColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Text(
                  'Your Turn',
                  style: GoogleFonts.macondo(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  height: MediaQuery.of(context).size.width - 32,
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
                  height: (MediaQuery.of(context).size.width - 32) + 50,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
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
                              const EdgeInsets.only(left: 0.0, bottom: 0.0),
                          child: InkWell(
                            onTap: () => print(index),
                            child: Container(
                              color: index % 2 == 0
                                  ? Colors.black.withOpacity(.0)
                                  : Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(left:6.0,bottom: 8.0),
                                child: Center(
                                  child: Icon(
                                    index % 2 == 0
                                        ? Icons.circle_outlined
                                        : Icons.close_outlined,
                                        size: 36,
                                    color: Colors.white,
                                  ),
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
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: BOTTOM_ICON_SIZE,
                          height: BOTTOM_ICON_SIZE,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent,
                          ),
                        ),
                        Container(
                          width: BOTTOM_ICON_SIZE,
                          height: BOTTOM_ICON_SIZE,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellowAccent,
                          ),
                        ),
                        Container(
                          width: BOTTOM_ICON_SIZE,
                          height: BOTTOM_ICON_SIZE,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.greenAccent,
                          ),
                        ),
                        Container(
                          width: BOTTOM_ICON_SIZE,
                          height: BOTTOM_ICON_SIZE,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: 64,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
