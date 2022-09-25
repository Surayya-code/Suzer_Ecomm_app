import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/presentation/screens/forgot_password/forgot_password_screen.dart';

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
               ForgotPasswordScreen.routeName);
            },
            child: Text(
              ' Register',
              style: AppTextStyles.registerTextStyle,
            ))
      ],
    );
  }
}
