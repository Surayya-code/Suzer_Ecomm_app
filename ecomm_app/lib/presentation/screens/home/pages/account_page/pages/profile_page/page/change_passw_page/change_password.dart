import 'package:flutter/material.dart';
import '../../../../../../../../../global/sized_box/sized_box.dart';
import '../../../../../../../../../global/themes/app_colors.dart';
import '../../../../../../../../widgets/global_default_button.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Change Password",
          style: TextStyle(color: AppColors.titleTextColor, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Old Password",
              style: TextStyle(color: AppColors.titleTextColor, fontSize: 20),
            ),
            AppSizedBox.sizedBox10h,
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: "*********",
              ),
            ),
            Text(
              "New Password",
              style: TextStyle(color: AppColors.titleTextColor, fontSize: 20),
            ),
            AppSizedBox.sizedBox10h,
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: "*********",
              ),
            ),
            Text(
              "New Password Again",
              style: TextStyle(color: AppColors.titleTextColor, fontSize: 20),
            ),
            AppSizedBox.sizedBox10h,
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: "*********",
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            //  AppSizedBox.sizedBox250,
            GlobalDefaultButton(
              text: "Save",
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
