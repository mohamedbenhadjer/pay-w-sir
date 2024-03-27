import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/infos.dart';

class PaymentSucsses extends StatelessWidget {
  const PaymentSucsses({super.key});

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
                icon: Icon(
                  Icons.arrow_right_alt_sharp,
                  color: Color(0xFF2743FD),
                  size: 30,
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.43,
              top: _deviceheight * 0.13,
              child: Text(
                'P',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Josefin Sans',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.52,
              top: _deviceheight * 0.13,
              child: SvgPicture.asset(
                "assets/images/Vector 11.svg",
                width: _devicewidth * 0.0651162790697674,
                height: _deviceheight * 0.0472103004291845,
              ),
            ),
            Positioned(
              left: _devicewidth * 0.1481395348837209,
              top: _deviceheight * 0.2640772532188841,
              child: SizedBox(
                width: _devicewidth * 0.706046511627907,
                child: Text(
                  'تم الدفع بنجاح',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2A2A2A),
                    fontSize: 26,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.22,
              top: _deviceheight * 0.35,
              child: Container(
                width: _devicewidth * 0.6011627906976744,
                height: _deviceheight * 0.2812918454935622,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: SvgPicture.asset('assets/images/Background 2.svg'),
                    ),
                    Positioned(
                        left: 39.50,
                        top: 39.50,
                        child:
                            SvgPicture.asset('assets/images/Background 1.svg')),
                    Positioned(
                      left: 74.61,
                      top: 74.61,
                      child: SvgPicture.asset(
                          'assets/images/icons8-checkmark 1.svg'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: _deviceheight * 0.7,
              left: _devicewidth * 0.11,
              child: Container(
                width: _devicewidth * 0.78,
                height: _deviceheight * 0.07,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(1.00, -0.07),
                    end: Alignment(-1, 0.07),
                    colors: [Color(0xFF4960F9), Color(0xFF1433FF)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () {},
                  child: Text(
                    'طبع وصل الدفع',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: _deviceheight * 0.712,
              left: _devicewidth * 0.75,
              child: SvgPicture.asset('assets/images/Vector.svg'),
            ),
            Positioned(
              top: _deviceheight * 0.85,
              left: _devicewidth * 0.11,
              child: Container(
                width: _devicewidth * 0.78,
                height: _deviceheight * 0.07,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(1.00, -0.07),
                    end: Alignment(-1, 0.07),
                    colors: [Color(0xFF4960F9), Color(0xFF1433FF)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () {},
                  child: Text(
                    'تحميل وصل الدفع',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: _deviceheight * 0.865,
              left: _devicewidth * 0.75,
              child: SvgPicture.asset('assets/images/Vector 1.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
