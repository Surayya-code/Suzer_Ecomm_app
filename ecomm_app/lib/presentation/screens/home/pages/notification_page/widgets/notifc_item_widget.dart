import 'package:flutter/material.dart';
import '../../../../../../../global/themes/app_colors.dart';
import '../notification_screen.dart';

class NotificationItemWidget extends StatelessWidget {
  final NotificationItemModel notificationItem;

  const NotificationItemWidget({
    super.key,
    required this.notificationItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Icon(
            notificationItem.icon,
            color: AppColors.primaryColor,
            size: 25,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            notificationItem.title,
            style:  TextStyle(
                fontSize: 18,
                color: AppColors.titleTextColor,
                fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          GestureDetector(
              onTap: (){},
              child: const Icon(
                Icons.circle,
                color:AppColors.errorColor,
              )),
        ],
      ),
    );
  }
}
