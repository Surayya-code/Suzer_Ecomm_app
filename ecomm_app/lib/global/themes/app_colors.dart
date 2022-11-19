import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primaryColor = Color(0xff40BFFF);
  static const Color primaryPurple = Color(0xff5C61F4);
  static Color primaryOpacityColor = primaryColor.withOpacity(0.1);
  static const Color successColor = Color(0xff5cb85c);
  static const Color primaryRedColor = Color(0xffFB7181);
  static const Color errorColor = primaryRedColor;
  static const Color neutralDarkColor = Color(0xff223263);
  static Color get titleTextColor => neutralDarkColor;
  static const Color neutralGreyColor = Color(0xff9098B1);
  static const Color textColor = neutralGreyColor;
  static const Color whiteColor = Color(0xffFFFFFF);
  static Color get iconColor => neutralGreyColor;
  static const Color neutralLightColor = Color(0xffEBF0FF);
  static Color get inActiveColor => neutralLightColor;
  static const Color primaryYellowColor = Color(0xffFFC833);
  static Color get rateActiveColor => primaryYellowColor;
  static const Color primaryGreenColor = Color(0xff53D1B6);
  static Color get activeColor => primaryGreenColor;
  static const Color primaryCardColor = Color(0xff00444f);
  static const Color secondaryCardColor = Color(0xffff7b67);
  
}
