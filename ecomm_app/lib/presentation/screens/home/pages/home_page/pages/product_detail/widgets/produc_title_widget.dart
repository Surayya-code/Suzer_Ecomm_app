import 'package:flutter/material.dart';

import '../../../../../../../../global/themes/app_colors.dart';

class ProductTitleWidget extends StatelessWidget {
  final String titleText;
  final String rightTitleText;
  final double fontSize;
  const ProductTitleWidget({
    Key? key, 
    required this.titleText,
     required this.fontSize, required this.rightTitleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titleText,
          style: TextStyle(
              color: AppColors.titleTextColor,
              fontSize: fontSize,
              fontWeight: FontWeight.bold),
        ),
       const Spacer(),
        InkWell(
          onTap: (){},
          child: Text(rightTitleText,
          style: const TextStyle(
          color: AppColors.primaryColor,
          fontSize:18,fontWeight: FontWeight.bold),),
        )
      ],
    );
  }
}