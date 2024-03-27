import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/payment_methode.dart';
import 'package:paywsir/screens/phone_number.dart';
import 'package:paywsir/widgets/smallText.dart';

class PaymentScreen1 extends StatelessWidget {
  const PaymentScreen1({super.key});

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
              top: _deviceheight * 0.06291845493,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentMethode()),
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
              left: _devicewidth * 0.3418604651162791,
              top: _deviceheight * 0.8133047210300429,
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => PhoneNumber()),
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
              left: _devicewidth * 0.3023255813953488,
              top: _deviceheight * 0.2682403433476395,
              child: Text(
                'أدخل معلومات حسابك البريدي',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2A2A2A),
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.1116279069767442,
              top: _deviceheight * 0.433090128755365,
              child: Container(
                width: _devicewidth * 0.7906976744186047,
                height: _deviceheight * 0.0636480686695279,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF2743FD)),
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
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: '            XXXXXXXXXXXXXX',
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.41999998688697815),
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w900,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.5604651162790698,
              top: _deviceheight * 0.388412017167382,
              child: SizedBox(
                width: _devicewidth * 0.3116279069767442,
                child: Text(
                  'رقم الحساب البريدي',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xD82A2A2A),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.5116279069767442,
              top: _deviceheight * 0.5682832618025751,
              child: Container(
                width: _devicewidth * 0.2006976744186047,
                height: _deviceheight * 0.0636480686695279,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF2743FD)),
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
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: '   XX',
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.41999998688697815),
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w900,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: _devicewidth * 0.4904651162790698,
              top: _deviceheight * 0.5303862660944206,
              child: SizedBox(
                width: _devicewidth * 0.3116279069767442,
                child: Text(
                  'المفتاح',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xD82A2A2A),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w900,
                    height: 0,
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
