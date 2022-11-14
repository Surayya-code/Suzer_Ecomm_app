import 'package:flutter/material.dart';
import 'locator.dart';
import 'presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  setupLocator();
  runApp(const MyApp());
}


