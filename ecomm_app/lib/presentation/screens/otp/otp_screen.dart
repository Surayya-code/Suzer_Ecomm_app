import 'package:flutter/material.dart';

import '../../../global/sized_box/sized_box.dart';
import '../../../global/styles/app_paddings.dart';
import '../../../global/themes/app_colors.dart';
import '../../widgets/global_appbar.dart';
import 'widgets/otp_form.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(title: 'OTP Verification'),
      body: Padding(
        padding: AppPaddings.paddingAll16,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'We sent your code to +1 898 860 ***',
              ),
              _buildTimer,
              AppSizedBox.sizedBox60h,
              const OTPForm(),
              AppSizedBox.sizedBox40h,
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Resend OTP Code',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Timer homescreen
//use pinput

Widget get _buildTimer => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('This code will expired in'),
        TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0),
            duration: const Duration(seconds: 30),
            builder: (context, num value, child) => Text(
                  " 00:${value.toDouble().toStringAsFixed(0)}",
                  style: const TextStyle(color: AppColors.errorColor),
                ),
            onEnd: () {}),
      ],
    );
