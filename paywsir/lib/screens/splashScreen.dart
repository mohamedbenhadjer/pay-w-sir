import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paywsir/utils/colors.dart';
import 'package:paywsir/widgets/bigText.dart';
import 'package:paywsir/widgets/smallText.dart';
import 'package:paywsir/screens/loadingPage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:math' as math;

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const loadingPage()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _firstScreen(context),
    );
  }
}

Widget _firstScreen(BuildContext context) {
  double _devicewidth = MediaQuery.of(context).size.width;
  double _deviceheight = MediaQuery.of(context).size.height;
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(color: appColors.mainColor),
    child: Stack(
      children: [
        Positioned(
          top: _deviceheight * 0.4570815450643777,
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
          top: _deviceheight * 0.4570815450643777,
          left: _devicewidth * 0.5046511627906977,
          child: Image.asset(
            "assets/images/Vector 10.png",
            width: _devicewidth * 0.1,
            height: _deviceheight * 0.08,
          ),
        ),
        Positioned(
            top: _deviceheight * 0.5278969957081545,
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
                    Column(
                      children: [
                        SizedBox(
                          height: _deviceheight * 0.008,
                        ),
                        BigText(
                          text: "Sir",
                          size: _deviceheight * 0.0343347639484979,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )),
      ],
    ),
  );
}
