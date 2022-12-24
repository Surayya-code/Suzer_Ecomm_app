import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../global/sized_box/sized_box.dart';
import '../../../global/styles/app_paddings.dart';
import '../../../global/styles/app_text_styles.dart';
import '../../widgets/global_diamond_icon.dart';
import '../../widgets/global_divider.dart';
import '../../widgets/global_no_account.dart';
import '../../widgets/global_signin_buttons.dart';
import '../forgot_password/forgot_password_screen.dart';
import '../sign_up/sing_up_screen.dart';
import 'widgets/signin_form.dart';

class SignInScreen extends StatelessWidget {

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppPaddings.paddingAll16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: GlobalDiamondIcon(),
                ),
                AppSizedBox.sizedBox24h,
                Text(
                  'Welcome to E-comm',
                  style: AppTextStyles.headingTitleStyle,
                ),
                AppSizedBox.sizedBox16h,
                Text(
                  'Sign in to continue',
                  style: AppTextStyles.signinTitleStyle,
                ),
                AppSizedBox.sizedBox16h,
                const SignForm(),
                Row(
                  children: <Widget>[
                    const Expanded(
                      child: GlobalDivider(),
                    ),
                    Text(
                      "OR",
                      style: AppTextStyles.textStyle,
                    ),
                    const Expanded(
                      child: GlobalDivider(),
                    ),
                  ],
                ),
                AppSizedBox.sizedBox8h,
                const GlobalButton(
                    image: 'assets/images/google_logo.png',
                    text: 'Login with Google'),
                AppSizedBox.sizedBox10h,
                const GlobalButton(
                    image: 'assets/images/facebook_logo.png',
                    text: 'Login with Facebook'),
                AppSizedBox.sizedBox16h,
                GestureDetector(
                    onTap: (() => Get.to(() => const ForgotPasswordScreen())),
                    child: Text(
                      'Forgot Password?',
                      style: AppTextStyles.registerTextStyle,
                    )),
                AppSizedBox.sizedBox10h,
                NoAccountText(
                  accountText: 'Don\'t have an account?',
                  screenText: 'Register',
                  onTap: () => Get.to(() => const SignUpScreen()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
