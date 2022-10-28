import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/styles/app_border_radius.dart';
import 'package:suzer_ecom_appp/global/styles/app_paddings.dart';
import 'package:suzer_ecom_appp/global/themes/app_colors.dart';

class AppStyles {
  static OutlineInputBorder outlineInputBorder(
          {Color color = AppColors.textColor}) =>
      OutlineInputBorder(
        borderRadius: AppBorderRadius.borderRadius5,
        borderSide: BorderSide(
          color: color,
        ),
      );

  static final InputDecoration otpInputDecoration = InputDecoration(
    contentPadding: AppPaddings.symmetricVertical16,
    enabledBorder: otpOutlineInputBorder(),
    focusedBorder: otpOutlineInputBorder(),
    border: otpOutlineInputBorder(),
  );

  static OutlineInputBorder otpOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: AppBorderRadius.borderRadius16,
      borderSide: const BorderSide(color: AppColors.textColor),
    );
  }
}
