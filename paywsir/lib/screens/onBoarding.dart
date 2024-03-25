import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/welcomeScreen.dart';
import 'package:paywsir/widgets/bigText.dart';
import 'package:paywsir/widgets/onboardingItems.dart';
import 'package:paywsir/widgets/smallText.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double _devicewidth = MediaQuery.of(context).size.width;
    double _deviceheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView.builder(
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemCount: 3,
          reverse: true,
          controller: _controller,
          itemBuilder: (_, i) {
            return Stack(
              children: [
                Positioned(
                    bottom: _deviceheight * 0.7904721030042918,
                    right: _devicewidth * 0.6902325581395349,
                    child: SvgPicture.asset(
                      "assets/images/Ellipse 44.svg",
                      width: _devicewidth * 0.4651162790697674,
                      height: _deviceheight * 0.2145922746781116,
                    )),
                Positioned(
                    top: _deviceheight * 0.5021459227467811,
                    right: _devicewidth * -0.21,
                    child: Image.asset(
                      "assets/images/Rectangle 7.png",
                      height: _deviceheight * 0.5633047210300429,
                      width: _devicewidth * 1.453488372093023,
                    )),
                Positioned(
                    top: _deviceheight * 0.4645922746781116,
                    right: _devicewidth * 0.0813953488372093,
                    left: _devicewidth * 0.0813953488372093,
                    child: Container(
                      width: 360,
                      child: Column(
                        children: [
                          Text(
                            contents[i].discription,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                              fontFamily: "Urbanist",
                            ),
                          ),
                          Text(
                            contents[i].discription2,
                            style: TextStyle(
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w900,
                                fontSize: 24),
                          )
                        ],
                      ),
                    )),
                Positioned(
                  top: _deviceheight * 0.8261802575107296,
                  left: _devicewidth * 0.0534883720930233,
                  child: Container(
                    width: _devicewidth * 0.4023255813953488,
                    height: _deviceheight * 0.0536480686695279,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        if (currentIndex == contents.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => welcomeScreen(),
                            ),
                          );
                        }
                        _controller.nextPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/images/Right-Arrow 1.svg"),
                          SizedBox(
                            width: _devicewidth * 0.09,
                          ),
                          SmallText(
                            text: currentIndex == contents.length - 1
                                ? "ابــدأ"
                                : "الــتــالــي",
                            weight: FontWeight.w900,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: _deviceheight * 0.8261802575107296,
                  right: _devicewidth * 0.0534883720930233,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    width: _devicewidth * 0.372093023255814,
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
                            builder: (_) => welcomeScreen(),
                          ),
                        );
                      },
                      child: SmallText(
                        text: "تــجــاوز",
                        weight: FontWeight.w700,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: _deviceheight * 0.1706008583690987,
                    right: _devicewidth * 0.2093023255813953,
                    child: Image.asset(
                      contents[i].image,
                      width: 250,
                      height: 250,
                    )),
                Positioned(
                  top: _deviceheight * 0.7392703862660944,left: _devicewidth * 0.4372093023255814,
                  child: Container(
                    child: Row(
                      children: List.generate(
                        contents.length,
                            (index) => buildDot(index, context),
                      ),
                    ),
                  ),

                )
              ],
            );
          }),
    );
  }

  void moveLeft() {
    _controller.animateToPage(
      _controller.page!.toInt() - 1,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width:  currentIndex == (2 - index) ? 25 : 10,
      margin: EdgeInsets.only(left: index == 0 ? 0 : 5), // Adjust margin for right alignment
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == (2 - index) ? Colors.black : Colors.white, // Highlight current index
      ),
    );
  }

}
