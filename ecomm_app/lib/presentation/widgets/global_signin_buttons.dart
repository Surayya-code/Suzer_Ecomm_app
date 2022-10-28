import 'package:flutter/material.dart';
import '../../global/styles/app_text_styles.dart';
import '../../global/themes/app_colors.dart';

class GlobalButton extends StatelessWidget {
  final String image;
  final String text;
  final double width = 32;
  final double height = 32;
  const GlobalButton({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.iconColor, side: BorderSide(
          width: 1.0,
          color: AppColors.iconColor,
        ), backgroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: () {},
      icon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Image.asset(
          image,
          width: width,
          height: height,
        ),
      ),
      label: Text(
        text,
        style: AppTextStyles.googleLoginTextStyle,
      ),
    );
  }
}
