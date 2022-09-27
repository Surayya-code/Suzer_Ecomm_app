import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/constants.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'OTP Verification',
                style: headingStyle,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'We sent your code to +1 898 860 ***',
              ),
              timer(),
              const SizedBox(
                height: 60,
              ),
              const OTPForm(),
              const SizedBox(height: 40,),
              GestureDetector(
                onTap: (){
                  /////
                },
                child: const Text('Resend OTP Code',
                style: TextStyle(decoration: TextDecoration.underline,),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row timer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('This code will expired in'),
        TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0),
            duration: const Duration(seconds: 30),
            builder: (context, value, child) => Text(
                  "00: $value!",
                  style: const TextStyle(color: errorColor),
                ),
            onEnd: () {}),
      ],
    );
  }
}

