import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';

import '../../../../../../data/models/product_card_model.dart';
import '../../../../../../global/sized_box/sized_box.dart';
import '../../../../../../global/themes/app_colors.dart';
import '../pages/product_detail/product_detail_screen.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductCardModel product;
  const ProductItemWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, 
      width: 200,
      child: InkWell(
        onTap: () {
         Get.to(()=> ProductDetailScreen(product: product,));
        },
        child: Card(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              color: Colors.grey.shade200,
            ),
          ),
          elevation: 0,
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  product.image!,
                  height: 90,
                  width: double.infinity,
                ),
                AppSizedBox.sizedBox5h,
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: product.category,
                    style: TextStyle(
                      color: AppColors.titleTextColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  text: TextSpan(
                    text: product.title,
                    style: TextStyle(
                      color: AppColors.titleTextColor,
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14,
                    ),
                  ),
                ),
                AppSizedBox.sizedBox5h,
                Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        text: "\$ ${product.price}",
                        style: const TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    AppSizedBox.sizedBox5h,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: "\$ ${product.price}",
                            style: const TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: AppColors.textColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        AppSizedBox.sizedBox5h,
                        RichText(
                          textAlign: TextAlign.right,
                          text: const TextSpan(
                              text: "%25",
                              style: TextStyle(
                                color: AppColors.errorColor,
                                fontSize: 16,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

