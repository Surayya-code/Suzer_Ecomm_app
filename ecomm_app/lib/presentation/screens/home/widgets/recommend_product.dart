import 'package:flutter/material.dart';

import '../../../../global/themes/app_colors.dart';

class RecommendedProduct extends StatelessWidget {
  final String image;
  final String text;
  const RecommendedProduct({
    Key? key, required this.image, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset(
            image,
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
              children:  [
                Text(
                  text,
                  // "Recomended Product",
                  style:const TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
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
    );
  }
}
