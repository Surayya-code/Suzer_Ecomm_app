import 'package:flutter/material.dart';
import '../screens/styles/app_text_styles.dart';
import '../screens/themes/app_colors.dart';

class GlobalDefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  const GlobalDefaultButton({
  Key? key, 
  required this.text, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColors.primaryBlue,
        minimumSize: Size(MediaQuery.of(context).size.width, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      //onPressed: press(),
      onPressed:(){
        press();
      },
      child: GestureDetector(
        onTap: () {
          // Navigator.pushNamed(context, HomeScreen.routeName);
        },
        child: Text(
          text, style: AppTextStyles.loginTextStyle,
        ),
      ),
    );
  }
}
