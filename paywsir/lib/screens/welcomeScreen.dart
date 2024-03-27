import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/chose.dart';
import 'package:paywsir/screens/infos.dart';
import 'package:paywsir/screens/loginScreen.dart';
import 'package:paywsir/screens/paymentScreeen.dart';
import 'package:paywsir/screens/signupScreen.dart';

import 'package:paywsir/utils/colors.dart';
import 'package:paywsir/widgets/bigText.dart';
import 'package:paywsir/widgets/smallText.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _welcomeScreen(context),
    );
  }
}

Widget _welcomeScreen(BuildContext context) {
  double _devicewidth = MediaQuery.of(context).size.width;
  double _deviceheight = MediaQuery.of(context).size.height;
  return Container(
    child: Stack(
      children: [
        Positioned(
            top: _deviceheight * 0.1341201716738197,
            right: _devicewidth * 0.0627906976744186,
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/images/whiteLogo.svg",
                  height: _deviceheight * 0.0472103004291845,
                ),
                BigText(
                  text: " و سير pay مرحبا بك في ",
                  size: 26,
                  weight: FontWeight.w900,
                ),
              ],
            )),
        Positioned(
            top: _deviceheight * 0.2221030042918455,
            right: _devicewidth * 0.2093023255813953,
            child: Image.asset(
              "assets/images/creditcard.gif",
              width: _devicewidth * 0.6558139534883721,
              height: _deviceheight * 0.3401287553648069,
            )),
        Positioned(
            top: _deviceheight * 0.6244635193133047,
            right: _devicewidth * 0.0465116279069767,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: appColors.mainColor),
              width: _devicewidth * 0.9069767441860465,
              height: _deviceheight * 0.0536480686695279,
              child: Row(
                children: [
                  SizedBox(
                    width: _devicewidth * 0.05,
                  ),
                  SvgPicture.asset(
                    "assets/images/Right-Arrow.svg",
                    width: _devicewidth * 0.072093023255814,
                    height: _deviceheight * 0.0160944206008584,
                  ),
                  SizedBox(
                    width: _devicewidth * 0.06,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => InfosScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'دفع الغرامة المالية من هنا',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Josefin Sans',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
            right: _devicewidth * 0.4767441860465116,
            top: _deviceheight * 0.7199570815450644,
            child: SmallText(
              text: "أو",
              size: 20,
              weight: FontWeight.w500,
            )),
        Positioned(
            top: _deviceheight * 0.7345407725321888,
            right: _devicewidth * 0.1095348837209302,
            child: SvgPicture.asset("assets/images/Line 2.svg")),
        Positioned(
            top: _deviceheight * 0.7345407725321888,
            left: _devicewidth * 0.1095348837209302,
            child: SvgPicture.asset("assets/images/Line 2.svg")),
        Positioned(
            top: _deviceheight * 0.7832618025751073,
            right: _devicewidth * 0.0465116279069767,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: appColors.mainColor),
              width: _devicewidth * 0.9069767441860465,
              height: _deviceheight * 0.0536480686695279,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => loginScreen(),
                    ),
                  );
                },
                child: Text(
                  'تسجيل الدخول ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Josefin Sans',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            )),
        Positioned(
            top: _deviceheight * 0.8690987124463519,
            right: _devicewidth * 0.1465116279069767,
            left: _devicewidth * 0.1465116279069767,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => signUpScreen(),
                      ),
                    );
                  },
                  child: SmallText(
                    text: " أنشئ حساب ",
                    color: appColors.mainColor,
                    size: 16,
                  ),
                ),
                SmallText(
                  text: "ليس لديك حساب من قبل؟",
                  size: 16,
                ),
              ],
            ))
      ],
    ),
  );
}
