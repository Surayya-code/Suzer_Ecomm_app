import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
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
            child: Text('More Category',
            style: TextStyle(fontSize: 16,color: AppColors.primaryBlue),)),
        ],
      ),
    );
  }
}

