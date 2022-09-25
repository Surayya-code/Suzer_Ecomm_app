import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/presentation/screens/forgot_password/forgot_password_screen.dart';

import 'presentation/screens/sign_in/sign_in_screen.dart';

//import 'screens/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes={
 SignInScreen.routeName:(context) => const SignInScreen(),
 ForgotPasswordScreen.routeName:(context) => const ForgotPasswordScreen(),
//  SignUpScreen.routeName:(context)=>const SignUpScreen(),
};