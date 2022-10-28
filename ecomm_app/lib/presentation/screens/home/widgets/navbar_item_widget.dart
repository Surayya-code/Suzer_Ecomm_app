import 'package:flutter/material.dart';

import '../../../../global/themes/app_colors.dart';

class NavBarItemWidget extends StatelessWidget {
  final IconData icon;
  final int index;
  final void Function() onTap;
  final bool isSelectedItem;

  const NavBarItemWidget({
    super.key,
    required this.icon,
    required this.index,
    required this.onTap,
    required this.isSelectedItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width / 5,
        child: Icon(
          icon,
          color:
              isSelectedItem ? AppColors.primaryColor : AppColors.inActiveColor,
        ),
      ),
    );
  }
}
