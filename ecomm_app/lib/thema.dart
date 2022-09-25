import 'package:flutter/material.dart';
import 'constants.dart';
import 'presentation/screens/themes/app_colors.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Poppins",
    appBarTheme: appBarThema(),
    textTheme: textThema(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
        color: AppColors.lightGrey,
      ),
    ); 
  return InputDecorationTheme(
    enabledBorder: outlineInputBorder,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
        color: AppColors.primaryBlue,
      ),
    ),
    border: outlineInputBorder,
  );
}

TextTheme textThema() {
  return const TextTheme(
    bodyText1: TextStyle(color: primaryColor),
    bodyText2: TextStyle(color: primaryLightColor),
    headline1: TextStyle(color: primaryColor, fontSize: 16),
  );
}

AppBarTheme appBarThema() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.blueGrey,
    ),
  );
}
