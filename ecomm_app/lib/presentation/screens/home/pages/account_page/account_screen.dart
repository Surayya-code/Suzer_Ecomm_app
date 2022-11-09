import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suzer_ecom_appp/presentation/screens/home/pages/account_page/pages/profile_page/profile_page.dart';

import '../../../../../global/themes/app_colors.dart';
import 'pages/adress_page/address_page.dart';
import 'pages/order_page/order_page.dart';
import 'pages/paymant_page/add_payment_page.dart';
import 'widgets/account_item_widget.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final List<AccountItemModel> _accountItemModel = [
    AccountItemModel(
      icon: Icons.person,
      title: "Account",
      onPress: () {},
    ),
    AccountItemModel(
      icon: Icons.local_mall,
      title: "Order",
      onPress: () {},
    ),
    AccountItemModel(
      icon: Icons.location_on,
      title: "Address",
      onPress: () {},
    ),
    AccountItemModel(
      icon: Icons.payment,
      title: "Payment",
      onPress: () {},
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              textAlign: TextAlign.start,
              "Account",
              style: TextStyle(color: AppColors.titleTextColor, fontSize: 24)),
        ),
        body: ListView.builder(
          itemCount: _accountItemModel.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              if (index == 0) {
                Get.to(const ProfileScreen());
              }
               if (index == 1) {
                Get.to(const OrderPageScreen());
              }
               if (index == 2) {
                Get.to(const AddressPageScreen());
              }
               if (index == 3) {
                Get.to(const AddPaymentScreen());
              }
            },
            child: AccountItemWidget(
              accountItem: _accountItemModel[index],
            ),
          ),
        ));
  }
}

class AccountItemModel {
  final IconData icon;
  final String title;
  final void Function() onPress;

  AccountItemModel({
    required this.icon,
    required this.title,
    required this.onPress,
  });
}
