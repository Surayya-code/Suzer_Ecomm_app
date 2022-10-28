import 'package:flutter/material.dart';
import '../themes/app_colors.dart';

class AppTextStyles {
  static TextStyle get reccomendedTextStyle => const TextStyle(
        fontSize: 24,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
      );

  static TextStyle get headingTitleStyle => const TextStyle(
        fontSize: 24,
        color: AppColors.textColor,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
        overflow: TextOverflow.ellipsis,
      );
  static TextStyle get signinTitleStyle => const TextStyle(
        fontSize: 16,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      );
  static TextStyle get loginTextStyle => const TextStyle(
        fontSize: 18,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      );
  static TextStyle get googleLoginTextStyle => const TextStyle(
        fontSize: 18,
        color: AppColors.textColor,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
      );
  static TextStyle get textStyle => const TextStyle(
        fontSize: 14,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      );
  static TextStyle get priceMiniTextStyle => const TextStyle(
        fontSize: 12,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
      );
  static TextStyle get priceMaxTextStyle => const TextStyle(
        fontSize: 20,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
      );
  static TextStyle get saleTextStyle => const TextStyle(
        fontSize: 12,
        color: AppColors.errorColor,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
      );
  static TextStyle get unsaleTextStyle => const TextStyle(
        fontSize: 12,
        color: AppColors.textColor,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      );
  static TextStyle get registerTextStyle => const TextStyle(
        fontSize: 14,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      );

  static TextStyle get forgotPasswordTextStyle => const TextStyle(
        fontSize: 24,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get appBarTitleTextStyle => const TextStyle(
        fontSize: 16,
        color: AppColors.neutralDarkColor,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
      );

      static TextStyle get registerSuccessTextStyle =>const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor);
}
