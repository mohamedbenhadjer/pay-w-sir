import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/otp_code.dart';
import 'package:paywsir/screens/payment_methode.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

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
              left: _devicewidth * 0.0023255813953488,
              top: _deviceheight * 0.0536480686695279,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentMethode()),
                  );
                },
                icon: Center(
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF141B34),
                    size: 25,
                  ),
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.2395348837209302,
              top: _deviceheight * 0.1244635193133047,
              child: SvgPicture.asset(
                'assets/images/OTP 1.svg',
                width: _devicewidth * 0.5586046511627907,
                height: _deviceheight * 0.2892703862660944,
              ),
            ),
            Positioned(
              top: _deviceheight * 0.4591845493562232,
              left: _devicewidth * 0.1627906976744186,
              child: Text(
                'OTP التحقق من الرقم السري',
                style: TextStyle(
                  color: Color(0xFF3A3A3A),
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              top: _deviceheight * 0.5228326180257511,
              left: _devicewidth * 0.127906976744186,
              child: SizedBox(
                width: _devicewidth * 0.7418604651162791,
                child: Text(
                  'سنرسل لك كلمة مرور لمرة واحدة على هذا الرقم المحمول',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: _deviceheight * 0.6333047210300429,
              left: _devicewidth * 0.3604651162790698,
              child: Text(
                'ادخل رقم الجوال',
                style: TextStyle(
                  color: Color(0xFFB9B9B9),
                  fontSize: 16,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              top: _deviceheight * 0.72,
              left: _devicewidth * 0.22,
              child: Container(
                width: _devicewidth * 0.56,
                height: _deviceheight * 0.05,
                decoration: ShapeDecoration(
                  color: Color(0xC4D9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: '    +213 656542316',
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.3799999952316284),
                      fontSize: 20,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtpCode()),
                    );
                  },
                  child: SizedBox(
                    width: 97,
                    child: Text(
                      'OTP أرسل ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
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
