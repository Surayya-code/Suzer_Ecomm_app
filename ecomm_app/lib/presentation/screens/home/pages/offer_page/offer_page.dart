import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/sized_box/sized_box.dart';
import 'package:suzer_ecom_appp/presentation/widgets/global_divider.dart';

import '../../../../../global/themes/app_colors.dart';
import '../../widgets/recommend_product.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const GlobalDivider(),
            AppSizedBox.sizedBox24h,
            Container(
          height: 100,
          width: 350,
          color: AppColors.primaryColor,
          child: const Text(
            textAlign:TextAlign.start,
            "Use “MEGSL” Cupon For Get 90%off",
            style: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.bold,fontSize: 26),
          ),
        ),
        AppSizedBox.sizedBox10h,
        //CarouselSliders(),
         const RecommendedProduct(image: 'assets/images/superSaleImg.png', text: 'Super Flash sale 50%',),
         const RecommendedProduct(image: 'assets/images/reccommendProduct.png', text: '90% Off Super Mega Sale ',),
          ],
        ),
      )
    );
  }
}
