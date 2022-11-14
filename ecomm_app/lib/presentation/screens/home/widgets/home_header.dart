import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:suzer_ecom_appp/global/themes/app_colors.dart';
import 'package:suzer_ecom_appp/provider/app_provider.dart';
import '../pages/notification_page/notification_screen.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SearchField(onChanged: ((p0) => {})),
        //  InkWell(
        //        onTap:(){
        //       },
        //       child: const Icon(Icons.favorite_outline,)),
        Consumer<AppProvider>(
          builder: (BuildContext context, appProvider, child) {
            return InkWell(
                onTap: () {
                  appProvider.toggleLike();
                },
                child: appProvider.isLiked
                    ? const Icon(
                        Icons.favorite,
                        color: AppColors.errorColor,
                      )
                    : const Icon(
                        Icons.favorite_outline,
                      ));
          },
        ),
        InkWell(
            onTap: () {
              Get.to(const NotificationScreen());
            },
            child: const Icon(
              Icons.notifications,
              color: AppColors.errorColor,
            )),
      ],
    );
  }
}
