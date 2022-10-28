import 'package:flutter/material.dart';

class AppConstants {
  AppConstants._();

  static double fullHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double fullWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
}
