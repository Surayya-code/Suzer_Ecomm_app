import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/constants/app_constants.dart';
import '../../global/styles/app_text_styles.dart';
import '../../global/themes/app_colors.dart';

class GlobalDefaultButton extends StatelessWidget {
  final String text;
  final Function onPress;
  const GlobalDefaultButton({
    Key? key,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        minimumSize: Size(AppConstants.fullWidth(context),
            AppConstants.fullHeight(context) * 0.06),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: () => onPress(),
      child: Text(
        text,
        style: AppTextStyles.loginTextStyle,
      ),
    );
  }
}
