import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'locator.dart';
import 'presentation/app.dart';

//bool shouldUseFirebaseEmulator = false;
Future main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  
  setupLocator();
  runApp(const MyApp());
}


