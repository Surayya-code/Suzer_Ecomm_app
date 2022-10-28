import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'global/themes/app_themes.dart';
import 'presentation/screens/sign_in/signin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Suzer E-comm",
      theme: theme(),
      home: const SignInScreen(),
    );
  }
}
