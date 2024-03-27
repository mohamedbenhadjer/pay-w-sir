import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/signUpScreen.dart';
import 'package:paywsir/utils/colors.dart';
import 'package:paywsir/widgets/bigText.dart';
import 'package:paywsir/widgets/smallText.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    double _devicewidth = MediaQuery.of(context).size.width;
    double _deviceheight = MediaQuery.of(context).size.height;
    var bottomNavItems;
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Positioned(
              top: _deviceheight * -0.000025751072961373,
              child: Container(
                width: _devicewidth,
                height: _deviceheight * 0.1974248927038627,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: appColors.mainColor,
                ),
              )),
          Positioned(
              top: _deviceheight * 0.0751072961373391,
              left: _devicewidth * 0.3823255813953488,
              child: SvgPicture.asset(
                "assets/images/blueLogo.svg",
                width: _devicewidth * 0.2127906976744186,
              )),
          Positioned(
              top: _deviceheight * 0.2120600858369099,
              left: _devicewidth * 0.3441860465116279,
              child: BigText(
                text: "معلومات سيارتك",
                size: 32,
                color: appColors.mainColor,
                weight: FontWeight.w900,
              )),
          Positioned(
              top: _deviceheight * 0.2270600858369099,
              left: _devicewidth * 0.2274418604651163,
              child: SvgPicture.asset(
                "assets/images/car.svg",
                width: _devicewidth * 0.1067441860465116,
                color: appColors.mainColor,
              )),
          Positioned(
              top: _deviceheight * 0.5,
              left: _devicewidth * 0.6062790697674419,
              child: BigText(
                text: "المخالفات",
                size: 32,
                color: appColors.mainColor,
                weight: FontWeight.w900,
              )),
          Positioned(
              top: _deviceheight * 0.51,
              left: _devicewidth * 0.4926046511627907,
              child: SvgPicture.asset(
                "assets/images/car.svg",
                width: _devicewidth * 0.1067441860465116,
                color: appColors.mainColor,
              )),
          Positioned(
              top: _deviceheight * 0.2839484978540773,
              left: _devicewidth * 0.0348837209302326,
              child: Container(
                  width: _devicewidth * 0.9348837209302326,
                  height: _deviceheight * 0.203862660944206,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: appColors.mainColor))),
          Positioned(
              top: _deviceheight * 0.2957510729613734,
              left: _devicewidth * 0.0348837209302326,
              child: Image.asset(
                "assets/images/carPicture.png",
                width: _devicewidth * 0.3372093023255814,
                height: _deviceheight * 0.1298283261802575,
              )),
          Positioned(
              top: _deviceheight * 0.2939914163090129,
              right: _devicewidth * 0.0883720930232558,
              child: BigText(
                text: "محمد بن حجر",
                size: 32,
                weight: FontWeight.w900,
                color: Colors.white,
              )),
          Positioned(
              top: _deviceheight * 0.3876824034334764,
              right: _devicewidth * 0.1046511627906977,
              child: SmallText(
                text: "رقم رخصة السياقة",
                size: 12,
                weight: FontWeight.w900,
                color: Colors.white,
              )),
          Positioned(
              top: _deviceheight * 0.4430901287553648,
              right: _devicewidth * 0.1046511627906977,
              child: SmallText(
                text: "رقم لوحة السيارة",
                size: 12,
                weight: FontWeight.w900,
                color: Colors.white,
              )),
          Positioned(
              top: _deviceheight * 0.3876824034334764,
              left: _devicewidth * 0.3837209302325581,
              child: SmallText(
                text: "00000543",
                size: 12,
                weight: FontWeight.w900,
                color: Colors.white,
              )),
          Positioned(
              top: _deviceheight * 0.4430901287553648,
              left: _devicewidth * 0.3232558139534884,
              child: SmallText(
                text: "01324 - 110 - 26",
                size: 12,
                weight: FontWeight.w900,
                color: Colors.white,
              ))
        ],
      )),
      bottomNavigationBar: Container(
          width: _devicewidth,
          height: _deviceheight * 0.0686695278969957,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            color: appColors.mainColor,
          ),
          child: Row(
            children: [
              SizedBox(
                width: _devicewidth * 0.0581395348837209,
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/user.svg",
                    width: _devicewidth * 0.086046511627907,
                    height: _deviceheight * 0.0375536480686695,
                  )),
              SizedBox(
                width: _devicewidth * 0.059302325581395,
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/notification.svg",
                    width: _devicewidth * 0.086046511627907,
                    height: _deviceheight * 0.0375536480686695,
                  )),
              SizedBox(
                width: _devicewidth * 0.059302325581395,
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/home.svg",
                    width: _devicewidth * 0.086046511627907,
                    height: _deviceheight * 0.0375536480686695,
                  )),
              SizedBox(
                width: _devicewidth * 0.059302325581395,
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/question.svg",
                    width: _devicewidth * 0.086046511627907,
                    height: _deviceheight * 0.0375536480686695,
                  )),
              SizedBox(
                width: _devicewidth * 0.059302325581395,
              ),
              IconButton(
                  onPressed: () {Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => signUpScreen(),
                    ),
                  );},
                  icon: SvgPicture.asset(
                    "assets/images/signout.svg",
                    width: _devicewidth * 0.086046511627907,
                    height: _deviceheight * 0.0375536480686695,
                  ))
            ],
          )),
    );
  }
}
