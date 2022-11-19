import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suzer_ecom_appp/global/sized_box/sized_box.dart';
import 'package:suzer_ecom_appp/global/themes/app_colors.dart';
import 'package:suzer_ecom_appp/presentation/screens/home/pages/home_page/pages/product_detail/widgets/produc_title_widget.dart';
import 'package:suzer_ecom_appp/presentation/widgets/global_default_button.dart';
import '../../../../../../../data/models/product_card_model.dart';
import '../../../../../../../global/styles/app_text_styles.dart';
import '../../../cart_page/cart_page.dart';
import 'widgets/color_widgets.dart';
import 'widgets/product_review_widget.dart';
import 'widgets/specification_details_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  final ProductCardModel product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title!),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.network(
                product.image!,
                height: 190,
                width: double.infinity,
              ),
              AppSizedBox.sizedBox10h,
              Text(product.title!, style: AppTextStyles.headingCardTitleStyle),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.favorite_outline_outlined),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "₼",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(product.price!.toString(),
                      style: const TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start),
                ],
              ),
              AppSizedBox.sizedBox16h,
              const ProductTitleWidget(
                titleText: 'Select Color',
                fontSize: 20,
                rightTitleText: '',
              ),
              AppSizedBox.sizedBox10h,
              SizedBox(
                height: 60,
                child: Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      ColorWidgets(
                        color: AppColors.primaryYellowColor,
                        onTapped: () {},
                      ),
                      ColorWidgets(
                        color: AppColors.primaryColor,
                        onTapped: () {},
                      ),
                      ColorWidgets(
                        color: AppColors.errorColor,
                        onTapped: () {},
                      ),
                      ColorWidgets(
                        color: AppColors.primaryGreenColor,
                        onTapped: () {},
                      ),
                      ColorWidgets(
                        color: AppColors.primaryPurple,
                        onTapped: () {},
                      ),
                      ColorWidgets(
                        color: AppColors.neutralDarkColor,
                        onTapped: () {},
                      ),
                    ],
                  ),
                ),
              ),
              AppSizedBox.sizedBox16h,
              const ProductTitleWidget(
                titleText: 'Specification',
                fontSize: 20,
                rightTitleText: '',
              ),
              AppSizedBox.sizedBox10h,
              Column(
                children: [
                  const SpecificationDetailsWidget(
                    prefixText: 'Shown :',
                    sufixText: 'Laser',
                  ),
                  AppSizedBox.sizedBox5h,
                  const SpecificationDetailsWidget(
                    prefixText: '',
                    sufixText: 'Laser Blue/Anthracite/Watermelon/',
                  ),
                  AppSizedBox.sizedBox5h,
                  const SpecificationDetailsWidget(
                    prefixText: '',
                    sufixText: 'White',
                  ),
                  AppSizedBox.sizedBox16h,
                  const SpecificationDetailsWidget(
                    prefixText: 'Style :',
                    sufixText: 'CD0113-400',
                  ),
                  AppSizedBox.sizedBox16h,
                  Text(
                    product.description.toString(),
                    style: AppTextStyles.specificationRightTextStyle,
                  ),
                  AppSizedBox.sizedBox16h,
                  const ProductTitleWidget(
                    titleText: 'Review product',
                    fontSize: 20,
                    rightTitleText: 'See more',
                  ),
                  AppSizedBox.sizedBox10h,
                  const ProductReviewWidget(),
                  AppSizedBox.sizedBox16h,
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/avatar.jpg",
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(" Jane Lawson",
                              style: TextStyle(
                                  color: AppColors.titleTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const ProductReviewWidget(),
                        ],
                      ),
                    ],
                  ),
                   AppSizedBox.sizedBox16h,
                   Text(product.description!,style: AppTextStyles.specificationRightTextStyle,),
                   AppSizedBox.sizedBox16h,
                   Row(children: [
                    Image.network(product.image!,width: 50,height: 50,),
                    Image.network(product.image!,width: 50,height: 50,),
                    Image.network(product.image!,width: 50,height: 50,),
                   ],)
                ],
              ),
           AppSizedBox.sizedBox16h,
           GlobalDefaultButton(text: "Add to Cart", onPress: (){
            Get.to(const CartPage());
           })
            ],
          ),
        ),
      ),
    );
  }
}
