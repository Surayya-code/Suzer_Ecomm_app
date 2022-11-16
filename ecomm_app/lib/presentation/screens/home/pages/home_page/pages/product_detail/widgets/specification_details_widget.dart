import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/styles/app_text_styles.dart';

class SpecificationDetailsWidget extends StatelessWidget {
  final String prefixText;
  final String sufixText;
  const SpecificationDetailsWidget({
    Key? key,
     required this.prefixText,
     required this.sufixText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(prefixText,style: AppTextStyles.specificationTitleStyle,),
        const Spacer(),Text(sufixText,style: AppTextStyles.specificationRightTextStyle,),
      ],
    );
  }
}