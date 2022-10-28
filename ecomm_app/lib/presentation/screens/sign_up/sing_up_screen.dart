import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../../global/sized_box/sized_box.dart';
import '../../../global/styles/app_text_styles.dart';
import '../../widgets/global_diamond_icon.dart';
import '../../widgets/global_no_account.dart';
import '../sign_in/signin_screen.dart';
import 'widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: GlobalDiamondIcon(),
            ),
            AppSizedBox.sizedBox24h,
            Text(
              "Let's Get Started",
              style: AppTextStyles.headingTitleStyle,
            ),
            AppSizedBox.sizedBox16h,
            Text(
              'Create an new account',
              style: AppTextStyles.signinTitleStyle,
            ),
            AppSizedBox.sizedBox16h,
            const SignUpForm(),
            AppSizedBox.sizedBox16h,
            NoAccountText(
              accountText: 'have an account? ',
              screenText: 'Login',
              onTap: () => Get.to(() => const SignInScreen()),
            ),
          ],
        ),
      ),
    ));
  }
}
