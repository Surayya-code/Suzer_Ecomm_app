import 'package:flutter/material.dart';
import '../../../../../global/themes/app_colors.dart';
import '../../widgets/carousel_sliders.dart';
import '../../widgets/categories.dart';
import '../../widgets/data.dart';
import '../../widgets/flash_sale.dart';
import '../../widgets/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 15,
        ),
         const Padding(
           padding:  EdgeInsets.all(16.0),
           child:  HomeHeader(),
         ),
        const SizedBox(
          height: 10,
        ),
        CarouselSliders(),
        const Categories(),
        const SizedBox(
          height: 5,
        ),
        FlashSale(
          text: 'Flash sale',
          press: () {},
        ),
        GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.all(5),
          children: Data.generateProducts()
              .map(
                (e) => Card(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: Colors.grey.shade200,
                    ),
                  ),
                  elevation: 0,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            e.image,
                            height: 90,
                            width: double.infinity,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: e.type,
                              style: TextStyle(
                                color: AppColors.titleTextColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: e.title,
                              style: TextStyle(
                                color: AppColors.titleTextColor,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: [
                              RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  text: "\$ ${e.price}",
                                  style: const TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: "\$ ${e.price}",
                                      style: const TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: AppColors.textColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  RichText(
                                    textAlign: TextAlign.right,
                                    text: TextSpan(
                                        text: "\$ ${e.price}",
                                        style: const TextStyle(
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
              )
              .toList(),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset(
                'assets/images/reccommendProduct.png',
                fit: BoxFit.cover,
                width: 1000,
              ),
            ),
            Positioned(
              //bottom: 50.0,
              top: 120,
              left: 20,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  children: const [
                    Text(
                      "Recomended Product",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "We recommend the best for you",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
