import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../../global/constants/app_constants.dart';
import '../../../global/sized_box/sized_box.dart';
import '../../../global/styles/app_paddings.dart';
import '../../../global/styles/app_text_styles.dart';
import '../../widgets/global_appbar.dart';
import '../../widgets/global_default_button.dart';
import '../home/home_screen.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(
        title: 'Login Success',
        showBack: false,
        centerTitle: true,
      ),
      body: Column(
        children: [
          AppSizedBox.sizedBox10h,
          Image.asset(
            "assets/images/login_success.jpg",
            height: AppConstants.fullHeight(context) * 0.4,
            width: AppConstants.fullWidth(context),
          ),
          AppSizedBox.sizedBox16h,
          Text(
            'Login Success!',
            style: AppTextStyles.registerSuccessTextStyle,
          ),
          AppSizedBox.sizedBox10h,
          Padding(
            padding: AppPaddings.paddingAll16,
            child: GlobalDefaultButton(
              text: 'Back to home',
              onPress: () {
                Get.off(() => const HomeScreen());
              },
            ),
          )
        ],
      ),
    );
  }
}
