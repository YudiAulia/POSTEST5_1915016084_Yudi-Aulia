import 'package:flutter/material.dart';
import 'package:postest5_1915016084_yudiaulia/LandingPage.dart';
import 'package:postest5_1915016084_yudiaulia/HalamanForm.dart';
import 'package:postest5_1915016084_yudiaulia/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash_Screen(),
    );
  }
}
