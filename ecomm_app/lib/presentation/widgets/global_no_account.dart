import 'package:flutter/material.dart';
import '../screens/sign_up/sign_up_screen.dart';
import '../screens/styles/app_text_styles.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(child: Text('Dont have a account? ')),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context,
               SignUpScreen.routeName);
            },
            child: Text(
              ' Register',
              style: AppTextStyles.registerTextStyle,
            ))
      ],
    );
  }
}
