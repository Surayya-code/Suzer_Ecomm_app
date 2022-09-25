import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/presentation/widgets/global_divider.dart';
import '../../../widgets/global_center_icon.dart';
import '../../../widgets/global_have_account.dart';
import '../../../widgets/global_signin_buttons.dart';
import '../../styles/app_text_styles.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: GlobalCenterIcon(),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Welcome to E-comm',
              style: AppTextStyles.headingTitleStyle,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Sign in to continue',
              style: AppTextStyles.signinTitleStyle,
            ),
            const SizedBox(
              height: 16,
            ),
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
            ),const SizedBox(height: 8,),
              const GlobalButton(image: 'assets/images/google_logo.png',text: 'Login with Google'),
              const SizedBox(height: 10,),
              const GlobalButton(image: 'assets/images/facebook_logo.png',text: 'Login with Facebook'),
              const SizedBox(height: 15,),
               Text('Forgot Password?',style: AppTextStyles.registerTextStyle,),
               const SizedBox(height: 10,),
              const NoAccountText(),
          ],
        ),
      ),
    );
  }
}
