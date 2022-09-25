import 'package:flutter/material.dart';
import '../screens/themes/app_colors.dart';

class GlobalDivider extends StatelessWidget {
  const GlobalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Divider(
        color: AppColors.primarygrey,
        height: 26,
      ),
    );
  }
}
