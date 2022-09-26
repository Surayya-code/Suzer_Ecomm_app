import 'package:flutter/material.dart';
import 'components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName="/complete_profile";
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
      ),
      body: const Body(),
    );
  }
}