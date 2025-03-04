import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watshapp_ui/Screens/Login/loginscreen.dart';
import 'package:watshapp_ui/Widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image.png"),
            SizedBox(height:20,),
            UiHelper.CustomText(text: "Welcome to Whatsapp", height: 20, color: Color(0XFF000000)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              UiHelper.CustomText(text:"Read Out ", height: 14),
              UiHelper.CustomText(text:"Privacy Policy.", height: 14, color:Color(0XFF0C42CC)),
              UiHelper.CustomText(text: "Tap ''Agree and continue''" , height: 14),

            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              UiHelper.CustomText(text:"Read Out ", height: 14),
              UiHelper.CustomText(text:"Privacy Policy.", height: 14, color:Color(0XFF0C42CC)),

            ],),

        ],),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
          }, buttonname: "Agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}