import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/chose.dart';
import 'package:paywsir/screens/payment_methode.dart';
import 'package:paywsir/widgets/smallText.dart';

class D4 extends StatelessWidget {
  const D4({super.key});

  @override
  Widget build(BuildContext context) {
    double _devicewidth = MediaQuery.of(context).size.width;
    double _deviceheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: _devicewidth * 0.81395348837,
              top: _deviceheight * 0.04291845493,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Chose()),
                  );
                },
                icon: SvgPicture.asset('assets/images/Right-Arrow 3.svg'),
              ),
            ),
            Positioned(
                left: _devicewidth * 0.4,
                top: _deviceheight * 0.112,
                child: SvgPicture.asset(
                  "assets/images/whiteLogo.svg",
                  height: _deviceheight * 0.0736480686695279,
                  width: _devicewidth * 0.1804651162790698,
                )),
            Positioned(
              left: _devicewidth * 0.3418604651162791,
              top: _deviceheight * 0.8933047210300429,
              child: Container(
                width: _devicewidth * 0.372093023255814,
                height: _deviceheight * 0.0536480686695279,
                decoration: ShapeDecoration(
                  color: Color(0xFF2743FD),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFF2743FD)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentMethode()),
                    );
                  },
                  child: SmallText(
                    text: "ادفع",
                    color: Colors.white,
                    weight: FontWeight.w800,
                    size: 23,
                  ),
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.15872093023256,
              top: _deviceheight * 0.195,
              child: Container(
                width: _devicewidth * 0.713953488372093,
                height: _deviceheight * 0.0729613733905579,
                decoration: ShapeDecoration(
                  color: Color(0xFF2743FD),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFF2743FD)),
                    borderRadius: BorderRadius.circular(30),
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
                child: Center(
                  child: SmallText(
                    text: "الدرجة 4",
                    color: Colors.white,
                    weight: FontWeight.w800,
                    size: 22,
                  ),
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.13372093023256,
              top: _deviceheight * 0.252,
              child: SvgPicture.asset(
                'assets/images/Frame 4.svg',
                height: _deviceheight * 0.6051931330472103,
                width: _devicewidth * 0.8065116279069767,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
