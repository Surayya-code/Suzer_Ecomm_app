import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/sized_box/sized_box.dart';

import '../../../../../../../global/themes/app_colors.dart';

class OrderPageScreen extends StatelessWidget {
  const OrderPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            textAlign: TextAlign.start,
            "Order",
            style: TextStyle(color: AppColors.titleTextColor, fontSize: 24)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
          InkWell(
            onTap: (){},
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.textColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(children: [
                        Text(
                          "LQNSU346JK",
                          style: TextStyle(
                              color: AppColors.titleTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                      AppSizedBox.sizedBox10h,
                      Row(children: const [
                        Text(
                          "Order at E-comm : August 1, 2017",
                          style:
                              TextStyle(color: AppColors.textColor, fontSize: 14),
                        ),
                      ]),
                      AppSizedBox.sizedBox10h,
                      Row(children: [
                        const Text(
                          "Order Status",
                          style:
                              TextStyle(color: AppColors.textColor, fontSize: 14),
                        ),
                        const Spacer(),
                        Text(
                          "Shipping",
                          style: TextStyle(
                              color: AppColors.titleTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                      AppSizedBox.sizedBox10h,
                      Row(children: [
                        const Text(
                          "Items",
                          style:
                              TextStyle(color: AppColors.textColor, fontSize: 14),
                        ),
                        const Spacer(),
                        Text(
                          "2 Items purchased",
                          style: TextStyle(
                              color: AppColors.titleTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                      AppSizedBox.sizedBox10h,
                      Row(children: const [
                        Text(
                          "Price",
                          style:
                              TextStyle(color: AppColors.textColor, fontSize: 14),
                        ),
                        Spacer(),
                        Text(
                          "\$299.99",
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ],
                  ),
                )),
          ),
          AppSizedBox.sizedBox10h,
          InkWell(
            onTap:(){

            },
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.textColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(children: [
                        Text(
                          "SDG1345KJD",
                          style: TextStyle(
                              color: AppColors.titleTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                      AppSizedBox.sizedBox10h,
                      Row(children: const [
                        Text(
                          "Order at E-comm : August 1, 2017",
                          style:
                              TextStyle(color: AppColors.textColor, fontSize: 14),
                        ),
                      ]),
                      AppSizedBox.sizedBox10h,
                      Row(children: [
                        const Text(
                          "Order Status",
                          style:
                              TextStyle(color: AppColors.textColor, fontSize: 14),
                        ),
                        const Spacer(),
                        Text(
                          "Shipping",
                          style: TextStyle(
                              color: AppColors.titleTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                      AppSizedBox.sizedBox10h,
                      Row(children: [
                        const Text(
                          "Items",
                          style:
                              TextStyle(color: AppColors.textColor, fontSize: 14),
                        ),
                        const Spacer(),
                        Text(
                          "2 Items purchased",
                          style: TextStyle(
                              color: AppColors.titleTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                      AppSizedBox.sizedBox10h,
                      Row(children: const [
                        Text(
                          "Price",
                          style:
                              TextStyle(color: AppColors.textColor, fontSize: 14),
                        ),
                        Spacer(),
                        Text(
                          "\$299.43",
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ],
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
