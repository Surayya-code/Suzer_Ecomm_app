import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:suzer_ecom_appp/global/sized_box/sized_box.dart';
import 'package:suzer_ecom_appp/presentation/widgets/global_default_button.dart';

import '../../../../../../../../../global/themes/app_colors.dart';

class CreditDebitCart extends StatelessWidget {
  const CreditDebitCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
            textAlign: TextAlign.start,
            "Credit Card or Debit",
            style: TextStyle(color: AppColors.titleTextColor, fontSize: 24)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(height: 200,
            width: 380,
            color: AppColors.primaryColor,),
            AppSizedBox.sizedBox10h,
             Container(height: 200,
            width: 380,
            color: AppColors.primaryPurple,),
            AppSizedBox.sizedBox10h,
            GlobalDefaultButton(text: "Add Card", onPress: (){})
          ],
        ),
      ),
    );
  }
}