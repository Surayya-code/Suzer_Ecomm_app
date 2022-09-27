import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/presentation/screens/forgot_password/forgot_password_screen.dart';
import 'package:suzer_ecom_appp/presentation/screens/otp/otp_screen.dart';
import 'presentation/screens/complete_profile/complete_profile_screen.dart';
import 'presentation/screens/login_success/login_success_screen.dart';
import 'presentation/screens/sign_in/sign_in_screen.dart';
import 'presentation/screens/sign_up/sign_up_screen.dart';



final Map<String, WidgetBuilder> routes={
 SignInScreen.routeName:(context) => const SignInScreen(),
 ForgotPasswordScreen.routeName:(context) => const ForgotPasswordScreen(),
 LoginSuccessScreen.routeName:(context)=>const LoginSuccessScreen(),
 SignUpScreen.routeName:(context) => const SignUpScreen(),
 CompleteProfileScreen.routeName:(context) => const CompleteProfileScreen(),
 OtpScreen.routeName:(context) => const OtpScreen(),

};