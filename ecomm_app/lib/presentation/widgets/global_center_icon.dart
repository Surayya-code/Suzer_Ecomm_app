import 'package:flutter/material.dart';
import '../screens/themes/app_colors.dart';

class GlobalCenterIcon extends StatelessWidget {
const GlobalCenterIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.primaryBlue,
                  ),
                  child: const Image(
                      image: AssetImage('assets/icons/whiteIcon.png')),
                );
  }
}