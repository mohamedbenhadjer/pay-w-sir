import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/utils/colors.dart';
import 'package:paywsir/widgets/bigText.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final TextEditingController _emailController = TextEditingController();
  bool _isTouchedEmail = false;
  bool _isTouchedPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loginScreen(context),
    );
  }
}

Widget _loginScreen(BuildContext context) {
  double _devicewidth = MediaQuery.of(context).size.width;
  double _deviceheight = MediaQuery.of(context).size.height;
  return Container(
    child: Stack(
      children: [
        Positioned(
            top: -_deviceheight * 0.0472103004291845,
            left: -_devicewidth * 0.1767441860465116,
            child: SvgPicture.asset(
              "assets/images/circles.svg",
              width: _devicewidth * 0.5790697674418605,
              height: _deviceheight * 0.2910300429184549,
            )),
        Positioned(
            bottom: -_deviceheight * 0.0536909871244635,
            left: -_devicewidth * 0.2367441860465116,
            child: SvgPicture.asset(
              "assets/images/circles2.svg",
              width: _devicewidth * 0.5290697674418605,
              height: _deviceheight * 0.2310300429184549,
            )),
        Positioned(
            bottom: -_deviceheight * 0.0536909871244635,
            right: -_devicewidth * 0.2367441860465116,
            child: SvgPicture.asset(
              "assets/images/circles3.svg",
              width: _devicewidth * 0.5290697674418605,
              height: _deviceheight * 0.2310300429184549,
            )),
        Positioned(
            top: _deviceheight * 0.1684549356223176,
            left: _devicewidth * 0.4209302325581395,
            right: _devicewidth * 0.4174418604651163,
            child: SvgPicture.asset(
              "assets/images/whiteLogo.svg",
              height: _deviceheight * 0.0472103004291845,
              width: _devicewidth * 0.1604651162790698,
            )),
        Positioned(
          top: _deviceheight * 0.3898068669527897,
          left: _devicewidth * 0.0790697674418605,
          child: Container(
            width: _devicewidth * 0.7906976744186047,
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
                  SizedBox(width: _devicewidth * 0.0395348837209302),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "email.exemple@mail.com",
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  Icon(
                    Icons.email,
                    color: Color(0xFF2743FD),
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
          top: _deviceheight * 0.5107403433476395,
          left: _devicewidth * 0.0790697674418605,
          child: Column(
            children: [
              Container(
                width: _devicewidth * 0.7906976744186047,
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
                      SizedBox(width: _devicewidth * 0.0395348837209302),
                      Expanded(
                        child: StatefulBuilder(
                          builder: (context, setState) {
                            bool _showPassword = false;

                            return TextField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: !_showPassword,
                              decoration: InputDecoration(
                                hintText: "Password",
                                border: InputBorder.none,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _showPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (_showPassword == false) {
                                        _showPassword = false;
                                      } else {
                                        _showPassword = true;
                                      }
                                    });
                                  },
                                ),
                              ),
                              onChanged: (value) {},
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: _deviceheight * 0.1013948497854077,
              ),
              Container(
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
                      text: " تسجيل الدخول",
                      color: Colors.white,
                      size: 20,
                      weight: FontWeight.w700,
                    )),
              )
            ],
          ),
        ),
        Positioned(
            right: _devicewidth * 0.1534883720930233,
            top: _deviceheight * 0.3402145922746781,
            child: BigText(
              text: "البريد الالكتروني",
              weight: FontWeight.w900,
              size: 16,
            )),
        Positioned(
            right: _devicewidth * 0.1534883720930233,
            top: _deviceheight * 0.471019313304721,
            child: BigText(
              text: "كلمة المرور",
              weight: FontWeight.w900,
              size: 16,
            ))
      ],
    ),
  );
}
