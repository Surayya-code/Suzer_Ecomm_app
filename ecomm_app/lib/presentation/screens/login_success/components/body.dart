
import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/constants.dart';
import 'package:suzer_ecom_appp/presentation/widgets/global_default_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
children: [
  const SizedBox(height: 10,),
  Image.asset("assets/images/login_success.jpg",
  height: 400,),
  const SizedBox(height: 16,),
  const Text('Login Success!',
  style: TextStyle(
    fontSize: 32,
    fontWeight:FontWeight.bold,
    color: primaryColor),
   ),const SizedBox(height: 10,),
   Padding(
     padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
     child: GlobalDefaultButton(text: 'Back to home',
     press: (){},),
   )
],
    );
  }
}