import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/onBoarding.dart';
import 'package:paywsir/utils/colors.dart';
import 'package:paywsir/widgets/bigText.dart';
import 'package:paywsir/widgets/smallText.dart';


class introScreen extends StatelessWidget {
  const introScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _intro(context),
    );
  }
}

Widget _intro(BuildContext context) {
  double _devicewidth = MediaQuery.of(context).size.width;
  double _deviceheight = MediaQuery.of(context).size.height;
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(color: appColors.mainColor),
    child: Stack(
      children: [
        Positioned(
          top: _deviceheight * 0.3336909871244635,
          left: _devicewidth * 0.3697674418604651,
          child: SvgPicture.asset(
            "assets/images/blueLogo.svg",
            width: _devicewidth * 0.2627906976744186,
            height: _deviceheight * 0.1309012875536481,
          ),
        ),
        Positioned(
            top: _deviceheight * 0.5708154506437768,
            right: _devicewidth * 0.1232558139534884,
            left: _devicewidth * 0.1558139534883721,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BigText(
                  text: "أول تطبيق لدفع الغرامات ",
                  size: 24,
                  color: Colors.white,
                  weight: FontWeight.w900,
                ),
                BigText(
                  text: "المرورية في الجزائر",
                  size: 24,
                  color: Colors.white,
                  weight: FontWeight.w900,
                )
              ],
            )),
        Positioned(
          top: _deviceheight * 0.8261802575107296,
          left: _devicewidth * 0.0534883720930233,
          child: Container(
            width: _devicewidth * 0.4023255813953488,
            height: _deviceheight * 0.0536480686695279,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => onBoarding()),
              );},
              child: SmallText(
                text: "الــتــالــي",
                weight: FontWeight.w900,
                size: 14,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
