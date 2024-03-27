import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/chose.dart';
import 'package:paywsir/widgets/smallText.dart';

class InfosScreen extends StatelessWidget {
  const InfosScreen({super.key});

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
              onPressed: () {},
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
            left: _devicewidth * 0.0767441860465116,
            top: _deviceheight * 0.2446351931330472,
            child: SizedBox(
              width: _devicewidth * 0.8441860465116279,
              child: Text(
                'الرجاء إدخال المعلومات التالية',
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
          ),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Chose()),
                  );
                },
                child: SmallText(
                  text: "أرسل",
                  color: Colors.white,
                  weight: FontWeight.w800,
                  size: 23,
                ),
              ),
            ),
          ),
          Positioned(
            left: _devicewidth * 0.1116279069767442,
            top: _deviceheight * 0.433090128755365,
            child: Container(
              width: _devicewidth * 0.7906976744186047,
              height: _deviceheight * 0.0636480686695279,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                  border: InputBorder.none,
                  labelText: '            XXXXXXXXXXXXXX',
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
            left: _devicewidth * 0.1116279069767442,
            top: _deviceheight * 0.5682832618025751,
            child: Container(
              width: _devicewidth * 0.7906976744186047,
              height: _deviceheight * 0.0636480686695279,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                  labelText: '            XXXXX - XXX - XX',
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
            left: _devicewidth * 0.6697674418604651,
            top: _deviceheight * 0.3036480686695279,
            child: Container(
              width: _devicewidth * 0.2325581395348837,
              height: _deviceheight * 0.0536480686695279,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  labelText: '   الولاية',
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
            left: _devicewidth * 0.3906976744186047,
            top: _deviceheight * 0.3036480686695279,
            child: Container(
              width: _devicewidth * 0.2325581395348837,
              height: _deviceheight * 0.0536480686695279,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  labelText: '   الدائرة',
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
            left: _devicewidth * 0.1116279069767442,
            top: _deviceheight * 0.3036480686695279,
            child: Container(
              width: _devicewidth * 0.2325581395348837,
              height: _deviceheight * 0.0536480686695279,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  labelText: '   البلدية',
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
            left: _devicewidth * 0.4837209302325581,
            top: _deviceheight * 0.6824034334763948,
            child: Container(
              width: _devicewidth * 0.4186046511627907,
              height: _deviceheight * 0.0536480686695279,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                  labelText: '     XXXXXXX',
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
            left: _devicewidth * 0.1116279069767442,
            top: _deviceheight * 0.6824034334763948,
            child: Container(
              width: _devicewidth * 0.3209302325581395,
              height: _deviceheight * 0.0536480686695279,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                decoration: InputDecoration(
                  labelText: 'MM/DD/YYYY',
                  border: InputBorder.none,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelStyle: TextStyle(
                    color: Colors.black.withOpacity(0.550000011920929),
                    fontSize: 13,
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
                'رقم رخصة السياقة',
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
            left: _devicewidth * 0.5604651162790698,
            top: _deviceheight * 0.5203862660944206,
            child: SizedBox(
              width: _devicewidth * 0.3116279069767442,
              child: Text(
                'رقم لوحة السيارة',
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
            left: _devicewidth * 0.5906976744186047,
            top: _deviceheight * 0.6545064377682403,
            child: SizedBox(
              width: _devicewidth * 0.3116279069767442,
              child: Text(
                'رقم المخالفة',
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
            left: _devicewidth * 0.1976744186046512,
            top: _deviceheight * 0.6545064377682403,
            child: SizedBox(
              width: _devicewidth * 0.3116279069767442,
              child: Text(
                'تاريخها',
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
    ));
  }
}
