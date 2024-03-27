import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/infos.dart';
import 'package:paywsir/utils/colors.dart';

class CardAlertDialog extends StatelessWidget {
  const CardAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          right: 80.0,
          top: -90.0,
          child: Image.asset(
            'assets/images/checked.png',
            height: 90,
            width: 90,
          ),
        ),
        Positioned(
          right: -40.0,
          top: -40.0,
          child: InkResponse(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => InfosScreen(),
                ),
              );
            },
            child: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.close, color: Colors.white),
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'لقد تم قبول الدفع الخاص بك',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffaf4c4c),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'لقد تم دفع غرامتك بنجاح '
                '\n'
                'شكرا على استخدامك لتطبيقنا'
                '\n'
                '!نحن دوما في خدمتكم',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 250,
              height: 57,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xff4960f9), Color(0xff1433ff)],
                  )),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: appColors.mainColor,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text("تحميل وصل الدفع",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(
                      "assets/images/download.svg",
                      width: 25,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
