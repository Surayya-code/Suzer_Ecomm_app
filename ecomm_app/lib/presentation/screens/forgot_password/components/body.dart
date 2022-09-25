import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:suzer_ecom_appp/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: const [
       Text('Forgot Password',
       style: TextStyle(fontSize: 24,
       color:primaryColor,
       fontWeight:FontWeight.bold,
        ),
       ),
       Text('Please enter your email and we will send \nyou a link to return to your account',
       textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}