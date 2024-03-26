import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/widgets/bigText.dart';
import 'package:flip_card/flip_card.dart';
import 'package:paywsir/widgets/smallText.dart';

class paymentScreen extends StatefulWidget {
  const paymentScreen({super.key});

  @override
  State<paymentScreen> createState() => _paymentScreenState();
}

class _paymentScreenState extends State<paymentScreen> {
  @override
  Widget build(BuildContext context) {
    double _devicewidth = MediaQuery.of(context).size.width;
    double _deviceheight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          child: Stack(
        children: [
          Positioned(
              top: _deviceheight * 0.1137339055793991,
              left: _devicewidth * 0.4,
              child: SvgPicture.asset("assets/images/whiteLogo.svg")),
          Positioned(
            top: _deviceheight * 0.1920600858369099,
            left: _devicewidth * 0.1488372093023256,
            child: FlipCard(
              direction: FlipDirection.HORIZONTAL,
              // Or FlipDirection.VERTICAL
              flipOnTouch: true,
              // Optional: Flip on tap

              // Front side of the card
              front: creditCardFront(context),

              // Back side of the card
              back: creditCardBack(context),
            ),
          ),
          Positioned(
              top: _deviceheight * 0.4120171673819742,
              right: _devicewidth * 0.2288372093023256,
              child: BigText(
                text: "أدخل معلومات بطاقتك الذهبية",
                size: 16,
                weight: FontWeight.w900,
              )),
          Positioned(
              top: _deviceheight * 0.4678111587982833,
              right: _devicewidth * 0.1325581395348837,
              child: BigText(
                text: "رقم البطاقة",
                size: 15,
                weight: FontWeight.w900,
              )),
          Positioned(
            top: _deviceheight * 0.5114163090128755,
            right: _devicewidth * 0.1162790697674419,
            child: Container(
              width: _devicewidth * 0.7674418604651163,
              height: _deviceheight * 0.055343347639485,
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    SizedBox(width: _devicewidth * 0.0895348837209302),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "xxxx - xxxx - xxxx - xxxx",
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      width: _devicewidth * 0.035348837209302,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: _deviceheight * 0.5808154506437768,
              right: _devicewidth * 0.1325581395348837,
              child: BigText(
                text: "الاسم الكامل ",
                size: 15,
                weight: FontWeight.w900,
              )),
          Positioned(
            top: _deviceheight * 0.6144206008583691,
            right: _devicewidth * 0.1162790697674419,
            child: Container(
              width: _devicewidth * 0.7674418604651163,
              height: _deviceheight * 0.055343347639485,
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    SizedBox(width: _devicewidth * 0.205348837209302),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "الاســم والــلــقــب",
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      width: _devicewidth * 0.035348837209302,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: _deviceheight * 0.6913304721030043,
              right: _devicewidth * 0.1325581395348837,
              child: Column(
                children: [
                  BigText(
                    text: "CVC2/CVV2 " "رقم ",
                    size: 11,
                    weight: FontWeight.w900,
                  ),
                  SmallText(
                    text: "(موجود خلف البطاقة)",
                    size: 9,
                    weight: FontWeight.w200,
                  )
                ],
              )),
          Positioned(
            top: _deviceheight * 0.7357081545064378,
            right: _devicewidth * 0.1162790697674419,
            child: Container(
              width: _devicewidth * 0.2674418604651163,
              height: _deviceheight * 0.055343347639485,
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    SizedBox(width: _devicewidth * 0.0695348837209302),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "xxx",
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      width: _devicewidth * 0.035348837209302,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: _deviceheight * 0.7013304721030043,
              left: _devicewidth * 0.1525581395348837,
              child: Column(
                children: [
                  BigText(
                    text: "تاريخ انتهاء الصلاحية",
                    size: 10,
                    weight: FontWeight.w900,
                  ),

                ],
              )),
          Positioned(
            top: _deviceheight * 0.7357081545064378,
            left: _devicewidth * 0.1162790697674419,
            child: Container(
              width: _devicewidth * 0.3255813953488372,
              height: _deviceheight * 0.055343347639485,
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    SizedBox(width: _devicewidth * 0.0585348837209302),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "MM/YY",
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      width: _devicewidth * 0.035348837209302,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: _deviceheight * 0.8369098712446352,
              right: _devicewidth * 0.313953488372093,
              child: Container(
                width: _devicewidth * 0.372093023255814,
                height: _deviceheight * 0.0536480686695279,
                decoration: ShapeDecoration(
                  color: Color(0xFF2743FD),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x59000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: TextButton(
                    onPressed: () {},
                    child: BigText(
                      text: "أرسل",
                      color: Colors.white,
                      size: 20,
                      weight: FontWeight.w700,
                    )),
              ))
        ],
      )),
    );
  }
}

Widget creditCardFront(BuildContext context) {
  double _devicewidth = MediaQuery.of(context).size.width;
  double _deviceheight = MediaQuery.of(context).size.height;
  return Container(
    width: _devicewidth * 0.686046511627907,
    height: _deviceheight * 0.1866952789699571,
    clipBehavior: Clip.antiAlias,
    decoration: ShapeDecoration(
      gradient: LinearGradient(
        begin: Alignment(-0.98, -0.20),
        end: Alignment(0.98, 0.2),
        colors: [
          Color(0xFF453291),
          Color(0xFF6D85C3),
          Color(0xFF6D84DB),
          Color(0xFF3C50BC)
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      shadows: [
        BoxShadow(
          color: Color(0x3F000000),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    ),
    child: Stack(
      children: [
        Positioned(
            bottom: _deviceheight * 0.1469957081545064,
            left: _devicewidth * 0.5465116279069767,
            child: BigText(
              text: "Visa",
              color: Color(0xFFCCCCCC),
              weight: FontWeight.w500,
            )),
        Positioned(
            top: _deviceheight * 0.01931330472103,
            left: _devicewidth * 0.0511627906976744,
            child: Image.asset(
              "assets/images/chip.png",
              width: _devicewidth * 0.1093023255813953,
              height: _deviceheight * 0.0375536480686695,
            )),
        Positioned(
          top: _deviceheight * 0.0933476394849785,
          left: _devicewidth * 0.017953488372093,
          child: Text(
            '1728 2847 3928 9282',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Digital Numbers',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
        Positioned(
          top: _deviceheight * 0.1491416309012876,
          left: _devicewidth * 0.0395348837209302,
          child: Text(
            'Nom Prenom\n',
            style: TextStyle(
              color: Color(0xFFFCFCFC),
              fontSize: 11,
              fontStyle: FontStyle.italic,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget creditCardBack(BuildContext context) {
  double _devicewidth = MediaQuery.of(context).size.width;
  double _deviceheight = MediaQuery.of(context).size.height;
  return Container(
    width: _devicewidth * 0.686046511627907,
    height: _deviceheight * 0.1866952789699571,
    clipBehavior: Clip.antiAlias,
    decoration: ShapeDecoration(
      gradient: LinearGradient(
        begin: Alignment(-0.98, -0.20),
        end: Alignment(0.98, 0.2),
        colors: [
          Color(0xFF453291),
          Color(0xFF6D85C3),
          Color(0xFF6D84DB),
          Color(0xFF3C50BC)
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      shadows: [
        BoxShadow(
          color: Color(0x3F000000),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    ),
    child: Stack(
      children: [
        Positioned(
            bottom: _deviceheight * 0.1469957081545064,
            left: _devicewidth * 0.5465116279069767,
            child: BigText(
              text: "Visa",
              color: Color(0xFFCCCCCC),
              weight: FontWeight.w500,
            )),
        Positioned(
            top: _deviceheight * 0.0433476394849785,
            child: Container(
              width: _devicewidth * 0.686046511627907,
              color: Colors.black,
              height: _deviceheight * 0.03,
            )),
        Positioned(
          top: _deviceheight * 0.1491416309012876,
          left: _devicewidth * 0.0395348837209302,
          child: Text(
            'Nom Prenom\n',
            style: TextStyle(
              color: Color(0xFFFCFCFC),
              fontSize: 11,
              fontStyle: FontStyle.italic,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        Positioned(
          top: _deviceheight * 0.1,
          left: _devicewidth * 0.0395348837209302,
          child: Text(
            'CVV\n',
            style: TextStyle(
              color: Color(0xFFFCFCFC),
              fontSize: 10,
              fontStyle: FontStyle.italic,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w200,
              height: 0,
            ),
          ),
        ),
        Positioned(
          top: _deviceheight * 0.12,
          left: _devicewidth * 0.0795348837209302,
          child: Text(
            '312\n',
            style: TextStyle(
              color: Color(0xFFFCFCFC),
              fontSize: 9,
              fontStyle: FontStyle.italic,
              fontFamily: 'Digital Numbers',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        Positioned(
          top: _deviceheight * 0.1,
          right: _devicewidth * 0.0395348837209302,
          child: Text(
            'Expiration Date\n',
            style: TextStyle(
              color: Color(0xFFFCFCFC),
              fontSize: 10,
              fontStyle: FontStyle.italic,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w200,
              height: 0,
            ),
          ),
        ),
        Positioned(
          top: _deviceheight * 0.12,
          right: _devicewidth * 0.0795348837209302,
          child: Text(
            '05/25\n',
            style: TextStyle(
              color: Color(0xFFFCFCFC),
              fontSize: 9,
              fontStyle: FontStyle.italic,
              fontFamily: 'Digital Numbers',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        )
      ],
    ),
  );
}
