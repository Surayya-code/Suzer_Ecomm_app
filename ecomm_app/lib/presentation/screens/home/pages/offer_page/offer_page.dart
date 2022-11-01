import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/sized_box/sized_box.dart';

import '../../../../../global/themes/app_colors.dart';
import '../home_page/home_page.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            textAlign: TextAlign.start,
            "Offer",
            style: TextStyle(color: AppColors.titleTextColor, fontSize: 24)),
      ),
      body: Column(
        children: [
          Container(
        height: 100,
        width: 300,
        color: AppColors.primaryColor,
        child: const Text(textAlign:TextAlign.center,
          "Use “MEGSL” Cupon For Get 90%off",
          style: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 20),
        ),
      ),
      AppSizedBox.sizedBox10h,
      // CarouselSliders(),
       const RecommendedProduct(),
        ],
      )
    );
  }
}
