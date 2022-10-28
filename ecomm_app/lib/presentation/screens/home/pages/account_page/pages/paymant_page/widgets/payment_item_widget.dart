import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/presentation/screens/home/pages/account_page/pages/paymant_page/add_payment_page.dart';

import '../../../../../../../../global/themes/app_colors.dart';

class PaymentItemWidget extends StatelessWidget {
  final PaymentItemModel paymentItem;
  const PaymentItemWidget({
    super.key, required this.paymentItem
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Icon(
            paymentItem.icon,
            color: AppColors.primaryColor,
            size: 25,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            paymentItem.title,
            style:  TextStyle(
                fontSize: 18,
                color: AppColors.titleTextColor,
                fontWeight: FontWeight.bold),
          ),
        ],
        ),
        );
  }
}