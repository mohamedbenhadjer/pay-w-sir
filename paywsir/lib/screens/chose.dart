import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/d1.dart';
import 'package:paywsir/screens/d2.dart';
import 'package:paywsir/screens/d3.dart';
import 'package:paywsir/screens/d4.dart';
import 'package:paywsir/screens/infos.dart';
import 'package:paywsir/screens/payment_methode.dart';
import 'package:paywsir/widgets/smallText.dart';

class Chose extends StatelessWidget {
  const Chose({super.key});

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfosScreen()),
                  );
                },
                icon: SvgPicture.asset('assets/images/Right-Arrow 3.svg'),
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
                  'اختر درجة الغرامة',
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
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => D1()),
                    );
                  },
                  child: SmallText(
                    text: "الدرجة 1",
                    color: Colors.white,
                    weight: FontWeight.w800,
                    size: 22,
                  ),
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.15872093023256,
              top: _deviceheight * 0.5,
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
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => D2()),
                    );
                  },
                  child: SmallText(
                    text: "الدرجة 2",
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
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => D3()),
                    );
                  },
                  child: SmallText(
                    text: "الدرجة 3",
                    color: Colors.white,
                    weight: FontWeight.w800,
                    size: 22,
                  ),
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.15872093023256,
              top: _deviceheight * 0.7,
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
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => D4()),
                    );
                  },
                  child: SmallText(
                    text: "الدرجة 4",
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
