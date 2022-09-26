import 'package:flutter/material.dart';
import '../../../widgets/global_center_icon.dart';
import '../../sign_in/sign_in_screen.dart';
import '../../styles/app_text_styles.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
        children:  [
            const Center(
            child: GlobalCenterIcon(),
            ),
          const SizedBox( height: 25),
            Text(
              "Let's Get Started",
              style: AppTextStyles.headingTitleStyle,
            ),const SizedBox( height: 16,),
            Text(
              'Create an new account',
              style: AppTextStyles.signinTitleStyle,
            ),
            const SizedBox(  height: 16,),
         const SignUpForm(),
         const  SizedBox( height: 25),
         Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(child: Text('have a account? ')),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context,
               SignInScreen.routeName);
            },
            child: Text(
              ' Sign in',
              style: AppTextStyles.registerTextStyle,
            ))
      ],
    ),
        ]
        ),
      ),
    );
  }
}

