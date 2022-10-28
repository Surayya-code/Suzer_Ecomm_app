import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes/app_colors.dart';

class AppSnackbar {
  static void showAppSnackbar(BuildContext context, String text, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text(text),
      ),
    );
  }

  static void getSnackBar(String message) {
    Get.snackbar(
      "Validation error!",
      message,
      snackPosition: SnackPosition.TOP,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      duration: const Duration(milliseconds: 1300),
      animationDuration: const Duration(milliseconds: 700),
      backgroundColor: AppColors.errorColor,
    );
  }
}
