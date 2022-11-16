
import 'package:flutter/material.dart';

import '../../../../../../../../global/themes/app_colors.dart';

class ProductReviewWidget extends StatelessWidget {
  const ProductReviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          color: AppColors.primaryYellowColor,
        ),
        Icon(
          Icons.star,
          color: AppColors.primaryYellowColor,
        ),
        Icon(
          Icons.star,
          color: AppColors.primaryYellowColor,
        ),
        Icon(
          Icons.star,
          color: AppColors.primaryYellowColor,
        ),
        Icon(
          Icons.star_outline,
          color: AppColors.neutralGreyColor,
        ),
        Text(
          "  4.5 (5 Review)",
          style: TextStyle(color: AppColors.neutralGreyColor),
        ),
      ],
    );
  }
}
