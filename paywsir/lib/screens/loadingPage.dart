import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/homeScreen.dart';
import 'package:paywsir/screens/intro.dart';
import 'package:paywsir/screens/welcomeScreen.dart';
import 'package:paywsir/utils/colors.dart';
import 'package:paywsir/widgets/bigText.dart';
import 'package:paywsir/widgets/smallText.dart';
import 'package:paywsir/screens/loadingPage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:math' as math;

import 'package:shared_preferences/shared_preferences.dart';

class loadingPage extends StatefulWidget {
  const loadingPage({super.key});

  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage>
    with SingleTickerProviderStateMixin {
  @override
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  );

  Future<void> _checkLoginAndNavigation() async {
    final prefs = await SharedPreferences.getInstance();
    final isFirstUse = prefs.getBool('isFirstUse') ?? true; // Default to true
    final isLoggedIn = _auth.currentUser != null; // Check for logged-in user

    if (isFirstUse) {
      // Navigate to introScreen
      await Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const introScreen()));
      prefs.setBool('isFirstUse', false); // Update isFirstUse
    } else if (!isLoggedIn) {
      // Navigate to welcomeScreen
      await Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const welcomeScreen()));
    } else {
      // Navigate to homeScreen
      await Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const homeScreen()));
    }
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    _controller
      ..forward() // Start animation
      ..addListener(() {
        if (_controller.isCompleted) {
          _checkLoginAndNavigation(); // Navigate after animation completes
        }
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
            top: _deviceheight * -0.01,
            right: _devicewidth * 0.6302325581395349,
            child: SvgPicture.asset(
              "assets/images/Rectangle 4234.svg",
              width: _devicewidth * 0.4558139534883721,
              height: _deviceheight * 0.1609442060085837,
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
            top: _deviceheight * 0.3401287553648069,
            left: _devicewidth * 0.3767441860465116,
            child: SvgPicture.asset(
              "assets/images/blueLogo.svg",
              width: _devicewidth * 0.2627906976744186,
              height: _deviceheight * 0.1309012875536481,
            ),
          ),
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
