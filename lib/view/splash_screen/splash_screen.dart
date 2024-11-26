// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:cashify_application_1/utilits/color_const.dart';
import 'package:cashify_application_1/utilits/image_const.dart';
import 'package:cashify_application_1/view/onbording_screen/onbording_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context) => OnboardingScreen(),));
    },);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.PRIMARYCOLOR,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstants.SPLASH,
              height: 140, 
              width: 130,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 1), 
            Text(
              "CASHIFY",
              style: GoogleFonts.montserrat(
                color: ColorConstants.WHITE,
                fontSize: 40,
                fontWeight: FontWeight.bold
              )

            ),
          ],
        ),
      ),
    );
  }
}