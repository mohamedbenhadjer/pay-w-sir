import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paywsir/screens/intro.dart';
import 'package:paywsir/utils/colors.dart';
import 'package:paywsir/widgets/bigText.dart';
import 'package:paywsir/widgets/smallText.dart';
import 'package:paywsir/screens/loadingPage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:math' as math;


class loadingPage extends StatefulWidget {
  const loadingPage({super.key});

  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const introScreen()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loadingScreen(context),
    );
  }
}

Widget _loadingScreen(BuildContext context) {
  double _devicewidth = MediaQuery.of(context).size.width;
  double _deviceheight = MediaQuery.of(context).size.height;
  return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: appColors.mainColor),
      child: Stack(
        children: [
          Positioned(
            top: _deviceheight * -0.1051502145922747,
            right: _devicewidth * 0.6302325581395349,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(0.51),
              child: Container(
                width: 150,
                height: 195.76,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50)),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: _devicewidth * 0.1046511627906977,
            top: _deviceheight * 0.2424892703862661,
            child: Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: _deviceheight * 0.796137339055794,
            left: _devicewidth * 0.3813953488372093,
            child: Container(
              width: 12,
              height: 12,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _deviceheight * 0.2188841201716738,
            right: _devicewidth * 0.2604651162790698,
            child: Container(
              width: 14,
              height: 14,
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _deviceheight * 0.286480686695279,
            right: _devicewidth * 0.0813953488372093,
            child: Container(
              width: 28,
              height: 28,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _deviceheight * 0.4023605150214592,
            right: _devicewidth * 0.0837209302325581,
            child: Container(
              width: 6,
              height: 6,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _deviceheight * 0.490343347639485,
            right: _devicewidth * 0.0651162790697674,
            child: Container(
              width: 12,
              height: 12,
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _deviceheight * 0.5493562231759657,
            right: _devicewidth * 0.1441860465116279,
            child: Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _deviceheight * 0.5944206008583691,
            right: _devicewidth * 0.3651162790697674,
            child: Container(
              width: 20,
              height: 20,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 200,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _deviceheight * 0.628755364806867,
            right: _devicewidth * 0.5395348837209302,
            child: Container(
              width: 12,
              height: 12,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _deviceheight * 0.5622317596566524,
            right: _devicewidth * 0.686046511627907,
            child: Container(
              width: 14,
              height: 14,
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _deviceheight * 0.6126609442060086,
            left: _devicewidth * 0.2093023255813953,
            child: Container(
              width: 6,
              height: 6,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _deviceheight * 0.5128755364806867,
            left: _devicewidth * 0.0813953488372093,
            child: Container(
              width: 20,
              height: 20,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: _deviceheight * 0.4055793991416309,
              left: _devicewidth * 0.1069767441860465,
              child: Container(
                width: 12,
                height: 12,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 200,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
              )),
          Positioned(
              top: _deviceheight * 0.332618025751073,
              left: _devicewidth * 0.2023255813953488,
              child: Container(
                width: 6,
                height: 6,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                ),
              )),
          Positioned(
            top: _deviceheight * 0.3626609442060086,
            left: _devicewidth * 0.413953488372093,
            child: SizedBox(
              width: _devicewidth * 0.0883720930232558,
              height: _deviceheight * 0.127906976744186,
              child: BigText(
                text: "P",
                size: _devicewidth * 0.127906976744186,
              ),
            ),
          ),
          Positioned(
            top: _deviceheight * 0.3594420600858369,
            left: _devicewidth * 0.5046511627906977,
            child: Image.asset(
              "assets/images/Vector 10.png",
              width: _devicewidth * 0.1,
              height: _deviceheight * 0.08,
            ),
          ),
          Positioned(
              top: _deviceheight * 0.4334763948497854,
              left: _devicewidth * 0.3767441860465116,
              child: Row(
                children: [
                  BigText(
                    text: "Pay",
                    color: Colors.white,
                    size: _deviceheight * 0.0343347639484979,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: _deviceheight * 0.016,
                      ),
                      SmallText(
                        text: "&",
                        size: _deviceheight * 0.0214592274678112,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: _devicewidth * 0.01,
                      ),
                      BigText(
                        text: "Sir",
                        size: _deviceheight * 0.0343347639484979,
                      ),
                    ],
                  )
                ],
              )),
          Positioned(
              top: _deviceheight * 0.8562231759656652,
              left: _devicewidth * 0.6906976744186047,
              child: Container(
                width: 250,
                height: 250,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 200,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
              )),
          Positioned(
              top: _deviceheight * 0.8830472103004292,
              left: _devicewidth * 0.7511627906976744,
              child: Container(
                width: 200,
                height: 200,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 200,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
              )),
          Positioned(
              top: _deviceheight * 0.76931330472103,
              left: _devicewidth * 0.427906976744186,
              right: _devicewidth * 0.427906976744186,
              child: SpinKitCircle(
                color: Colors.white,
                size: 70,
              ))
        ],
      ));
}
