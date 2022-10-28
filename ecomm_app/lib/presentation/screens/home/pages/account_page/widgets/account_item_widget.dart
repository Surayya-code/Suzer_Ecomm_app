import 'package:flutter/material.dart';

import '../../../../../../../global/themes/app_colors.dart';
import '../account.dart';

class AccountItemWidget extends StatelessWidget {
  final AccountItemModel accountItem;

  const AccountItemWidget({
    super.key,
    required this.accountItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Icon(
            accountItem.icon,
            color: AppColors.primaryColor,
            size: 25,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            accountItem.title,
            style:  TextStyle(
                fontSize: 18,
                color: AppColors.titleTextColor,
                fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          GestureDetector(
              onTap: (){},
              child:  Icon(
                Icons.chevron_right,
                color:AppColors.iconColor,
              )),
        ],
      ),
    );
  }
}
