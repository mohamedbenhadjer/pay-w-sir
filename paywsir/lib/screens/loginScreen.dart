import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paywsir/screens/homeScreen.dart';
import 'package:paywsir/screens/signUpScreen.dart';
import 'package:paywsir/screens/welcomeScreen.dart';
import 'package:paywsir/utils/colors.dart';
import '../components/card_alert_dialog.dart';
import '../components/card_input_formatter.dart';
import '../components/card_month_input_formatter.dart';
import '../components/master_card.dart';
import '../components/my_painter.dart';
import '../constants.dart';
import '../widgets/bigText.dart';
import '../widgets/smallText.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  String _email = '';

  String _password = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _handleLogin() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: _email, password: _password);
      print("User Logged in succesfully: ${userCredential.user!.email}");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => homeScreen(),
        ),
      );
    } catch (e) {
      print("Error during registeration: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),Row(
                children: [SizedBox(width: 300,),
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => welcomeScreen(),
                          ),
                        );
                      },
                      icon: SvgPicture.asset("assets/images/Right-Arrow 2.svg")),
                ],
              ),const SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(
                    width: 161,
                  ),
                  SvgPicture.asset("assets/images/whiteLogo.svg"),
                  SizedBox(
                    width: 80,
                  ),

                ],
              ),
              const SizedBox(height: 1),
              BigText(
                text: " تسجيل الدخول",
                size: 32,
                weight: FontWeight.w900,
                color: Color(0xFF05126E),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(
                    width: 235,
                  ),
                  BigText(
                    text: "البريد الالكتروني",
                    weight: FontWeight.w900,
                    size: 16,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width / 1.12,
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
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          hintText: 'email.exemple@mail.com',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        onChanged: (value) {
                          var text =
                              value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
                          setState(() {
                            emailController.value = emailController.value
                                .copyWith(
                                    text: text,
                                    selection: TextSelection.collapsed(
                                        offset: text.length),
                                    composing: TextRange.empty);
                            _email = emailController.text;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.email,
                      color: Colors.grey,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  SizedBox(
                    width: 271,
                  ),
                  BigText(
                    text: "كلمة المرور",
                    weight: FontWeight.w900,
                    size: 16,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width / 1.12,
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
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                            hintText: '••••••••••••••••••••••••',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          onChanged: (value) {
                            var text =
                                value.replaceAll(RegExp(r'\s+\b|\b\s'), ' ');
                            setState(() {
                              passwordController.value =
                                  passwordController.value.copyWith(
                                      text: text,
                                      selection: TextSelection.collapsed(
                                          offset: text.length),
                                      composing: TextRange.empty);
                              _password = passwordController.text;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.visibility,
                      color: Colors.grey,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Column(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => signUpScreen(),
                            ),
                          );
                        },
                        child: SmallText(
                          text: " أنشئ حساب ",
                          color: appColors.mainColor,
                          size: 13,
                        ),
                      ),
                      SmallText(
                        text: "ليس لديك حساب من قبل؟ ",
                        size: 13,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20 * 3),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: appColors.mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width / 1.12, 55),
                  ),
                  onPressed: () {
                    _handleLogin();
                  },
                  child: BigText(
                    text: " تسجيل الدخول",
                    size: 20,
                    weight: FontWeight.w900,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
