import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../global/themes/app_colors.dart';
import 'page/birthday_page/birthday_page.dart';
import 'page/change_passw_page/change_password.dart';
import 'page/email_page/email_page.dart';
import 'page/gender_page/choose_gender.dart';
import 'page/phone_number_page/phone_number.dart';
import 'widget/profile_item_widget.dart';
import 'widget/profile_picture.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<ProfileItemModel> _profileitemModel = [
    ProfileItemModel(
      icon: Icons.female,
      title: "Gender",
      info: "Male",
      onPress: () { },
    ),
    ProfileItemModel(
      icon: Icons.calendar_month,
      title: "Brithday",
      info: "12-10-22",
      onPress: () {},
    ),
    ProfileItemModel(
      icon: Icons.email_outlined,
      title: "Email",
      info: "sureyya@gmail.com",
      onPress: () {},
    ),
    ProfileItemModel(
      icon: Icons.smartphone,
      title: "Phone Number",
      info: "(307) 555-0133",
      onPress: () {},
    ),
    ProfileItemModel(
      icon: Icons.lock_outline,
      title: "Change Password",
      info: "**********",
      onPress: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          textAlign: TextAlign.start,
          "Profile",
          style: TextStyle(color: AppColors.titleTextColor, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const ProfilePicture(),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: _profileitemModel.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  if (index == 0) {
                      Get.to(const GenderScreen());
                    // showModalBottomSheet(
                    //     isScrollControlled: true,
                    //     context: context,
                    //     builder: (context) {
                    //       return SizedBox(
                    //         height: 400,
                    //         child: Center(
                    //           child: ElevatedButton(
                    //               onPressed: () {
                    //                 Navigator.pop(context);
                    //               },
                    //               child: const Text("Close bottomSheet")),
                    //         ),
                    //       );
                    //     });
                  }
                  if (index == 1) {
                    Get.to(const BrithdayScreen());
                  }
                  if (index == 2) {
                    Get.to(const EmailScreen());
                  }
                   if (index == 3) {
                    Get.to(const PhoneNumberScreen());
                  }
                  if (index == 4) {
                    Get.to(const ChangePasswordScreen());
                  }
                },
                child: ProfileListItemWidget(
                    profileItem: _profileitemModel[index]

                    //onTap: () => Navigator.pushNamed(context, GenderScreen.routeName),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileItemModel {
  final IconData icon;
  final String title;
  final String info;
  final void Function() onPress;

  ProfileItemModel({
    required this.icon,
    required this.title,
    required this.info,
    required this.onPress,
  });
}
