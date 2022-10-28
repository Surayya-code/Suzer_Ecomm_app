import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../global/themes/app_colors.dart';
import '../profile_page/profile_page.dart';
import 'pages/credit_cart/credit_debit_cart.dart';
import 'widgets/payment_item_widget.dart';

class AddPaymentScreen extends StatefulWidget {
  const AddPaymentScreen({super.key});

  @override
  State<AddPaymentScreen> createState() => _AddPaymentScreenState();
}

class _AddPaymentScreenState extends State<AddPaymentScreen> {
  final List<PaymentItemModel> _paymentModel = [
    PaymentItemModel(icon: Icons.payment, title: "Credit Cart or Debit"),
    PaymentItemModel(icon: Icons.paypal, title: "PayPal"),
    PaymentItemModel(icon: Icons.account_balance, title: "Bank Transfer"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            textAlign: TextAlign.start,
            "Payment",
            style: TextStyle(color: AppColors.titleTextColor, fontSize: 24)),
      ),
      body: ListView.builder(
          itemCount: _paymentModel.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  if (index == 0) {
                    Get.to(const CreditDebitCart());
                  }
                  if (index == 1) {
                    Get.to(const ProfileScreen());
                  }
                  if (index == 2) {
                    Get.to(const ProfileScreen());
                  }
                },
                child: PaymentItemWidget(paymentItem: _paymentModel[index]),
              )),
    );
  }
}

class PaymentItemModel {
  final IconData icon;
  final String title;

  PaymentItemModel({required this.icon, required this.title});
}
