import 'package:flutter/material.dart';

import '../../../../../../data/models/product_card_model.dart';
import '../../../../../../global/sized_box/sized_box.dart';
import '../../../../../../global/themes/app_colors.dart';

class CardElementWidget extends StatefulWidget {
  final ProductCardModel? product;
  const CardElementWidget({super.key, this.product});


  @override
  State<CardElementWidget> createState() => _CardElementWidgetState();
}

class _CardElementWidgetState extends State<CardElementWidget> {
   int itemCount=0;
  @override
  Widget build(BuildContext context) {
    return  Container(
              // ProductCardModel product = productList[index];
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
                        InkWell(
                          onTap: (){
                            setState(() {
                              itemCount!=0 ? itemCount--: itemCount++;
                            });
                          },
                          child: Container(
                              color: AppColors.iconColor,
                              child: const Icon(Icons.remove)),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            itemCount.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.titleTextColor),
                          ),
                        ),
                        InkWell(
                          onTap:(){
                            setState(() {
                              itemCount++;
                            });
                          },
                          child: Container(
                              color: AppColors.iconColor,
                              child: const Icon(Icons.add)),
                        ),
                      ],
                    ),
                  ],
                ),
              );
  }
}