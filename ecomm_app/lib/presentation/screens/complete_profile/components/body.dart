import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/constants.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

