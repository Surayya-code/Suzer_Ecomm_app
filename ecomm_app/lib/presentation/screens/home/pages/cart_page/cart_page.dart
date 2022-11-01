import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/sized_box/sized_box.dart';
import 'package:suzer_ecom_appp/presentation/widgets/global_default_button.dart';

import '../../../../../global/themes/app_colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
            textAlign: TextAlign.start,
            "Your Cart",
            style: TextStyle(color: AppColors.titleTextColor, fontSize: 24)),
      ),
      body: Stack(
        children: [
          //Container(),
          Positioned.fill(
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: AppColors.primaryColor,
                      child: Image.asset("assets/images/product_5.png"),
                    ),
                    AppSizedBox.sizedBox10w,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nike Air Zoom Pegasus\n36 Miami",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: AppColors.titleTextColor),
                        ),
                        AppSizedBox.sizedBox10h,
                        const Text(
                          "\$299.43",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                            color: AppColors.iconColor,
                            child: const Icon(Icons.remove)),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            "7",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.titleTextColor),
                          ),
                        ),
                        Container(
                            color: AppColors.iconColor,
                            child: const Icon(Icons.add)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: GlobalDefaultButton(
                            onPress: () {},
                            text: 'Check Out',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
