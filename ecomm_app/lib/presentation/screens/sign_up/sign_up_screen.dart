import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
static String routeName="/sign_up";
const SignUpScreen({Key? key}) : super(key: key);
//sign in-daxil olmaq
//sign up-qeydiyyatdan keçmək
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       resizeToAvoidBottomInset: false,
      // appBar: AppBar(),
      body: Body(),
    );
  }
}