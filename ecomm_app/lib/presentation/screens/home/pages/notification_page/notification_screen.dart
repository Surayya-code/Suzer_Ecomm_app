import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/presentation/screens/home/pages/notification_page/widgets/notifc_item_widget.dart';
import '../../../../../global/themes/app_colors.dart';








class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<NotificationItemModel> notificationItemModel = [
    NotificationItemModel(
      icon: Icons.local_offer,
      title: "Offer",
      onPress: () {},
    ),
    NotificationItemModel(
      icon: Icons.feed,
      title: "Feed",
      onPress: () {},
    ),
    NotificationItemModel(
      icon: Icons.local_activity,
      title: "Activity",
      onPress: () {},
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              textAlign: TextAlign.start,
              "Account",
              style: TextStyle(color: AppColors.titleTextColor, fontSize: 24)),
        ),
        body: ListView.builder(
          itemCount: notificationItemModel.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              
            },
            child: NotificationItemWidget(
              notificationItem: notificationItemModel[index],
            ),
          ),
        ));
  }
}

class NotificationItemModel {
  final IconData icon;
  final String title;
  final void Function() onPress;

  NotificationItemModel({
    required this.icon,
    required this.title,
    required this.onPress,
  });
}
