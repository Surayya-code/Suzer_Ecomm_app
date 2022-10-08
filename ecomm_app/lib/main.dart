import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/routes.dart';
import 'presentation/screens/sign_in/sign_in_screen.dart';
import 'thema.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Suzer E-comm",
      theme: theme(),
    initialRoute: SignInScreen.routeName,
    routes: routes,
    
    );
  }
}

