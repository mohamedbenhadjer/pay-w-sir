import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    double _devicewidth = MediaQuery.of(context).size.width;
    double _deviceheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView.builder(
          itemCount: 3,
          itemBuilder: (_, i) {
            return Stack(
              children: [
                Positioned(
                    bottom: _deviceheight * 0.7904721030042918,
                    right: _devicewidth * 0.6602325581395349,
                    child: SvgPicture.asset(
                      "assets/images/ellipseOnBoarding.svg",
                      width: _devicewidth * 0.4651162790697674,
                      height: _deviceheight * 0.2145922746781116,
                    )),
                Positioned(
                    top: _deviceheight * 0.5021459227467811,
                    right: _devicewidth * -0.2,

                    child: Image.asset(
                      "assets/images/Rectangle 7.png",
                      height: _deviceheight * 0.5633047210300429 ,
                      width: _devicewidth * 1.453488372093023,
                    ))
              ],
            );
          }),
    );
  }
}
