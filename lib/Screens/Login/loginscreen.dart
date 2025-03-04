// //
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// //
// // import '../../Widgets/uihelper.dart';
// //
// // class LoginScreen extends StatefulWidget{
// //   @override
// //   State<LoginScreen> createState() => _LoginScreenState();
// // }
// //
// // class _LoginScreenState extends State<LoginScreen> {
// //   String selectedcountry="India";
// //
// //   List<String>countries=[
// //     "America",
// //     "Africa",
// //     "Italy",
// //     "Germany"
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Column(children: [
// //         SizedBox(height: 80,),
// //         Center(child: UiHelper.CustomText(text: "Enter your phone number", height: 20, color: Color(0XFF00A884), fontweight: FontWeight.bold)
// //         ),
// //         SizedBox(height: 30,),
// //         UiHelper.CustomText(text: "WhatsApp will need to verify your phone", height: 16),
// //         UiHelper.CustomText(text: "number. Carrier charges may apply.", height: 16),
// //         UiHelper.CustomText(text: " What's my number?", height: 16, color: Color(0XFF00A884)),
// //         SizedBox(height: 50,),
// //         DropdownButtonFormField(items: countries.map((String country){
// //           return DropdownMenuItem(child: Text(country), value:country,);
// //         }).toList(), onChanged: (newvalue){
// //           setState(() {
// //             selectedcountry = newvalue!;
// //           });
// //         },value: selectedcountry,decoration: InputDecoration(
// //           enabledBorder: UnderlineInputBorder(
// //
// //           )
// //         ))
// //       ],),
// //     );
// //   }
// // }
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../Widgets/uihelper.dart';
//
// class LoginScreen extends StatefulWidget {
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController phoneController = TextEditingController();
//   String selectedCountry = "India";
//
//   List<String> countryList = [
//     "India",
//     "America",
//     "Africa",
//     "Italy",
//     "Germany"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             UiHelper.CustomText(
//               text: "Enter your phone number",
//               height: 20,
//               color: Color(0XFF00A884),
//               fontweight: FontWeight.bold,
//             ),
//             SizedBox(height: 20),
//             UiHelper.CustomText(text: "WhatsApp will need to verify your phone", height: 16),
//             UiHelper.CustomText(text: "number. Carrier charges may apply.", height: 16),
//             UiHelper.CustomText(
//               text: "What's my number?",
//               height: 16,
//               color: Color(0XFF00A884),
//             ),
//             SizedBox(height: 40),
//             Padding(
//               padding: const EdgeInsets.only(left: 60, right: 60),
//               child: DropdownButtonFormField(
//                 items: countryList.map((String country) {
//                   return DropdownMenuItem(
//                     value: country,
//                     child: Text(country),
//                   );
//                 }).toList(),
//                 onChanged: (String? newValue) {
//                   if (newValue != null) {
//                     setState(() {
//                       selectedCountry = newValue;
//                     });
//                   }
//                 },
//                 value: selectedCountry,
//                 decoration: InputDecoration(
//                   enabledBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(color: Color(0XFF00A884))
//                   ),
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(color: Color(0XFF00A884))
//                   ),
//                   contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   width: 50,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top:5.0),
//                     child: TextField(
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(
//                         hintText: "+91",
//                         border: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0XFF00A884))
//                       ),
//                         focusedBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0XFF00A884))
//                         ),
//                         enabledBorder: UnderlineInputBorder(
//                           borderSide: BorderSide(color: Color(0XFF00A884))
//                         )
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 10,),
//                 Expanded(
//                   child: TextField(
//                     controller: phoneController,
//                     decoration: InputDecoration(
//                       embledBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(color: Color(0XFF00A884))
//                       )
//                     ),
//                   )
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = "India";

  Map<String, String> countryCodes = {
    "India": "+91",
    "America": "+1",
    "Africa": "+27",
    "Italy": "+39",
    "Germany": "+49"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "Enter your phone number",
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 20),
            UiHelper.CustomText(text: "WhatsApp will need to verify your phone", height: 16),
            UiHelper.CustomText(text: "number. Carrier charges may apply.", height: 16),
            UiHelper.CustomText(
              text: "What's my number?",
              height: 16,
              color: Color(0XFF00A884),
            ),
            SizedBox(height: 40),

            // Country Dropdown
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: DropdownButtonFormField(
                items: countryCodes.keys.map((String country) {
                  return DropdownMenuItem(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      selectedCountry = newValue;
                    });
                  }
                },
                value: selectedCountry,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
              ),
            ),

            SizedBox(height: 10),

            // Phone Number Input
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Country Code Field
                SizedBox(
                  width: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      readOnly: true, // Prevent manual edit
                      decoration: InputDecoration(
                        hintText: countryCodes[selectedCountry],
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),

                // Phone Number Field
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Enter phone number",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
        floatingActionButton: UiHelper.CustomButton(callback: (){}, buttonname: "Next"),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
