import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/styles/app_styles.dart';
import 'app_colors.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    primarySwatch: buildMaterialColor(AppColors.primaryColor),
    scaffoldBackgroundColor: AppColors.whiteColor,
    fontFamily: "Poppins",
    appBarTheme: appBarThema,
    textTheme: textThema,
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    enabledBorder: AppStyles.outlineInputBorder(),
    border: AppStyles.outlineInputBorder(),
    errorBorder: AppStyles.outlineInputBorder(color: AppColors.errorColor),
    focusedErrorBorder: AppStyles.outlineInputBorder(color: AppColors.errorColor),
  );
}

TextTheme get textThema => const TextTheme(
      bodyText1: TextStyle(color: AppColors.primaryColor),
      bodyText2: TextStyle(color: AppColors.primaryColor),
      headline1: TextStyle(color: AppColors.primaryColor, fontSize: 16),
    );

AppBarTheme get appBarThema {
  return AppBarTheme(
    color: AppColors.whiteColor,
    elevation: 0,
    iconTheme: IconThemeData(
      color: AppColors.iconColor,
    ),
  );
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
