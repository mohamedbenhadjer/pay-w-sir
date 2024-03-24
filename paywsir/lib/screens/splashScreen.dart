import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          top: _deviceheight * 0.434549356223176,
          right: _devicewidth * 0.3813953488372093,
          child: SvgPicture.asset(
            "assets/images/blueLogo.svg",
            width: _devicewidth * 0.2627906976744186,
            height: _deviceheight * 0.1309012875536481,
          ),
        ),
      ],
    ),
  );
}
