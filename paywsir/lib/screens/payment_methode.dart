import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/chose.dart';
import 'package:paywsir/screens/paymentScreeen.dart';
import 'package:paywsir/screens/payment_screen1.dart';
import 'package:paywsir/widgets/smallText.dart';

class PaymentMethode extends StatelessWidget {
  const PaymentMethode({super.key});

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
                icon: SvgPicture.asset('assets/images/Right-Arrow 2.svg'),
              ),
            ),
            Positioned(
                left: _devicewidth * 0.4,
                top: _deviceheight * 0.12,
                child: SvgPicture.asset(
                  "assets/images/whiteLogo.svg",
                  height: _deviceheight * 0.0736480686695279,
                  width: _devicewidth * 0.1804651162790698,
                )),
            Positioned(
              left: _devicewidth * 0.1008139534883721,
              top: _deviceheight * 0.2327896995708155,
              child: SizedBox(
                width: _devicewidth * 0.8441860465116279,
                child: Text(
                  'اختر طريقة الدفع',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2A2A2A),
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.15872093023256,
              top: _deviceheight * 0.4,
              child: Container(
                width: _devicewidth * 0.713953488372093,
                height: _deviceheight * 0.0729613733905579,
                decoration: ShapeDecoration(
                  color: Color(0xFF2743FD),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFF2743FD)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => paymentScreen()),
                    );
                  },
                  child: SmallText(
                    text: "البطاقة الذهبية",
                    color: Colors.white,
                    weight: FontWeight.w800,
                    size: 22,
                  ),
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.15872093023256,
              top: _deviceheight * 0.6,
              child: Container(
                width: _devicewidth * 0.713953488372093,
                height: _deviceheight * 0.0729613733905579,
                decoration: ShapeDecoration(
                  color: Color(0xFF2743FD),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFF2743FD)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentScreen1()),
                    );
                  },
                  child: SmallText(
                    text: "الحساب البريدي",
                    color: Colors.white,
                    weight: FontWeight.w800,
                    size: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
