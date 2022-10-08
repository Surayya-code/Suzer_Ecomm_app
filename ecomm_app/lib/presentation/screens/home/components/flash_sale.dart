import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';

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
           Text(text,style: TextStyle(fontSize: 16,color: AppColors.primaryBlue),),
           GestureDetector(
            onTap: press,
            child: Text('See more',
            style: TextStyle(fontSize: 16,color: AppColors.primaryBlue),)),
        ],
      ),
    );
  }
}

