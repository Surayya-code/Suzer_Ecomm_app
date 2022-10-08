import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../widgets/global_center_icon.dart';
import '../../widgets/global_divider.dart';
import '../../widgets/global_no_account.dart';
import '../../widgets/global_signin_buttons.dart';
import '../forgot_password/forgot_password_screen.dart';
import '../styles/app_text_styles.dart';
import 'components/sign_formcopy.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(),
      body: Center(
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
              ),
              const SizedBox(
                height: 8,
              ),
              const GlobalButton(
                  image: 'assets/images/google_logo.png',
                  text: 'Login with Google'),
              const SizedBox(
                height: 10,
              ),
              const GlobalButton(
                  image: 'assets/images/facebook_logo.png',
                  text: 'Login with Facebook'),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: (() {
                    Navigator.pushNamed(
                        context, ForgotPasswordScreen.routeName);
                  }),
                  child: Text(
                    'Forgot Password?',
                    style: AppTextStyles.registerTextStyle,
                  )),
              const SizedBox(
                height: 10,
              ),
              const NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
Future createUser({required String name,required String surname,required String mail,required String password})async {
  final docUser=FirebaseFirestore.instance.collection('users').doc('my-id') ;

final json ={
  'name':name,
  'surname':surname,
  'mail':mail,
  'password':password
};

await docUser.set(json);

}