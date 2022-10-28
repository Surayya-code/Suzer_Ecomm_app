import 'package:flutter/material.dart';

import '../../../../../../../../global/themes/app_colors.dart';
import '../profile_page.dart';

class ProfileListItemWidget extends StatelessWidget {
  final ProfileItemModel profileItem;
  // final void Function()? onTap;

  const ProfileListItemWidget({
    super.key,
    required this.profileItem,
    //required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Icon(
            profileItem.icon,
            color: AppColors.primaryColor,
            size: 25,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            profileItem.title,
            style: TextStyle(
                fontSize: 18,
                color: AppColors.titleTextColor,
                fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(
            profileItem.info,
            style: const TextStyle(fontSize: 16, color: AppColors.textColor),
          ),
          GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.chevron_right,
                color: AppColors.iconColor,
              )),
        ],
      ),
    );
  }
}
