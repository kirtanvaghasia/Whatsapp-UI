import 'dart:async';

import 'package:flutter/material.dart';
import 'package:watshapp_ui/Widgets/uihelper.dart';

import '../onBoarding/onboardingscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
          Image.asset("assets/images/whatsapp.png"),
            SizedBox(height: 10,),
            UiHelper.CustomText(text: "WhatsApp", height: 18, fontweight: FontWeight.bold)
      ],)
      ),
    );
  }
}