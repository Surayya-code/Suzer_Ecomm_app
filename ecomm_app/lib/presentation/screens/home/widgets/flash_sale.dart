import 'package:flutter/material.dart';

import '../../../../global/themes/app_colors.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({
    Key? key, 
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(text,style:const TextStyle(fontSize: 16,color: AppColors.primaryColor),),
           GestureDetector(
            onTap: press,
            child: const Text('See more',
            style: TextStyle(fontSize: 16,color: AppColors.primaryColor),)),
        ],
      ),
    );
  }
}

