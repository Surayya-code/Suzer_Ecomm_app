import 'package:flutter/material.dart';
//import 'screens/themes/app_colors.dart';

const primaryColor=Color(0xff223263);
const primaryLightColor=Color(0xff9098B1);
const errorColor=Color(0xffFB7181);
const blueColor=Color(0xff40BFFF);
const greenColor=Color(0xff53D1B6);
const purpleColor=Color(0xff5C61F4);
const warningColor=Color(0xffFFC833);

// final headingStyle= TextStyle(
//         fontSize: 24,
//         color: AppColors.textColor,
//         fontWeight: FontWeight.w700,
//         letterSpacing: 0.15,
// );

//Form Error
final RegExp emailvalidatorRegExp=
      RegExp(r"^[a-zA-Z0-9,]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kNameNullError="Please Enter your Name";
const String kEmailNullError="Please Enter your Email";
const String kInvalinEmailError="Please Enter Valid Email";
const String kInvalinNameError="Please Enter Valid Name";
const String kPassNullError="Please Enter your Password";
const String kShortPassError="Password is too short";
const String kMatchPassError="Password don't match";