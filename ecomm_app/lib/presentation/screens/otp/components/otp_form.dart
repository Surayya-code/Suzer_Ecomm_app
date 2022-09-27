import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../widgets/global_default_button.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 60,
              child: TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value, pin2FocusNode);
                },
              ),
            ),
            SizedBox(
              width: 60,
              child: TextFormField(
                obscureText: true,
                focusNode: pin2FocusNode,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value, pin3FocusNode);
                },
              ),
            ),
            SizedBox(
              width: 60,
              child: TextFormField(
                obscureText: true,
                focusNode: pin3FocusNode,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value, pin4FocusNode);
                },
              ),
            ),
            SizedBox(
              width: 60,
              child: TextFormField(
                obscureText: true,
                focusNode: pin4FocusNode,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  pin4FocusNode.unfocus();
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 40,),
        GlobalDefaultButton(text: 'Continue',
         press: (){})
      ],
    ));
  }
}
