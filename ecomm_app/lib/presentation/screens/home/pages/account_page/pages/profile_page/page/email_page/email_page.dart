import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/sized_box/sized_box.dart';

import '../../../../../../../../../global/themes/app_colors.dart';
import '../../../../../../../../widgets/global_default_button.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title:  Text(
          "Email",
          style: TextStyle(color: AppColors.titleTextColor, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children:  [
             Text("Change Email" ,
            style: TextStyle(color: AppColors.titleTextColor, fontSize: 20),),
            AppSizedBox.sizedBox10h,
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: "sureyya@mail.ru",
               ),),
               AppSizedBox.sizedBox10h,
              const Text("We Will Send vertification to your New Email",
              style: TextStyle(color: AppColors.primaryColor,fontSize: 14),),
              AppSizedBox.sizedBox380,
            GlobalDefaultButton(text: "Save", onPress: (){},)
          ],
        ),
      ),
    );
  }
}