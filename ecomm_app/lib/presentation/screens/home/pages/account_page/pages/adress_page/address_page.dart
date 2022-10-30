import 'package:flutter/material.dart';

import '../../../../../../../global/sized_box/sized_box.dart';
import '../../../../../../../global/themes/app_colors.dart';
import '../../../../../../widgets/global_default_button.dart';

class AddressPageScreen extends StatelessWidget {
  const AddressPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            textAlign: TextAlign.start,
            "Address",
            style: TextStyle(color: AppColors.titleTextColor, fontSize: 24)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.primaryColor),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(children: [
                      Text(
                        "Priscekila",
                        style: TextStyle(
                            color: AppColors.titleTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                    AppSizedBox.sizedBox10h,
                    Row(children: const [
                      Text(
                        "3711 Spring Hill Rd undefined Tallahassee,\nNevada 52874 United States",
                        style:
                            TextStyle(color: AppColors.textColor, fontSize: 14),
                      ),
                    ]),
                    AppSizedBox.sizedBox10h,
                    Row(children: const [
                      Text(
                        "+99 1234567890",
                        style:
                            TextStyle(color: AppColors.textColor, fontSize: 14),
                      ),
                    ]),
                    AppSizedBox.sizedBox10h,
                    Row(children: [
                      Container(
                        // ignore: sort_child_properties_last
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: InkWell(
                              onTap: () {},
                              child: const Text(
                                "Edit",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        decoration:
                            const BoxDecoration(color: AppColors.primaryColor),
                      ),
                      AppSizedBox.sizedBox10w,
                      InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.delete_outline,
                          ))
                    ]),
                    AppSizedBox.sizedBox10h,
                  ],
                ),
              )),
          AppSizedBox.sizedBox10h,
          Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.primaryColor),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(children: [
                      Text(
                        "Ahmad Khaidir",
                        style: TextStyle(
                            color: AppColors.titleTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                    AppSizedBox.sizedBox10h,
                    Row(children: const [
                      Text(
                        "3711 Spring Hill Rd undefined Tallahassee,\nNevada 52874 United States",
                        style:
                            TextStyle(color: AppColors.textColor, fontSize: 14),
                      ),
                    ]),
                    AppSizedBox.sizedBox10h,
                    Row(children: const [
                      Text(
                        "+99 1234567890",
                        style:
                            TextStyle(color: AppColors.textColor, fontSize: 14),
                      ),
                    ]),
                    AppSizedBox.sizedBox10h,
                    Row(children: [
                      Container(
                        decoration:
                            const BoxDecoration(color: AppColors.primaryColor),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: InkWell(
                              onTap: () {},
                              child: const Text(
                                "Edit",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                      AppSizedBox.sizedBox10w,
                      InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.delete_outline,
                          ))
                    ]),
                  ],
                ),
              )),
          AppSizedBox.sizedBox16h,
          GlobalDefaultButton(text: "Add Address", onPress: () {}),
        ]),
      ),
    );
  }
}
