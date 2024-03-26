import 'package:flutter/material.dart';
import 'package:paywsir/screens/intro.dart';
import 'package:paywsir/screens/loadingPage.dart';
import 'package:paywsir/screens/loginScreen.dart';
import 'package:paywsir/screens/onBoarding.dart';
import 'package:paywsir/screens/signupScreen.dart';
import 'package:paywsir/screens/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay&Sir',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:splashScreen(),
    );
  }
}

