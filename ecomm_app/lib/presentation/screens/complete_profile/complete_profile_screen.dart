import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'components/complete_profile_form.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName="/complete_profile";
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
      ),
      body: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Complete Profile',
              style: headingStyle,
            ),
            const Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            const CompleteProfileForm(),
          ],
        ),
      ),
    ),
    );
  }
}