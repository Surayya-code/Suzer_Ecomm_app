
import 'package:flutter/material.dart';

import '../../../../../../../../../global/sized_box/sized_box.dart';
import '../../../../../../../../../global/themes/app_colors.dart';
import '../../../../../../../../widgets/global_default_button.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title:  Text(
          "Phone Number",
          style: TextStyle(color: AppColors.titleTextColor, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children:  [
             Text("Phone Number" ,
            style: TextStyle(color: AppColors.titleTextColor, fontSize: 20),),
            AppSizedBox.sizedBox10h,
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone_android),
                labelText: "(994) 266 15 15",
               ),),      
              AppSizedBox.sizedBox250,
            GlobalDefaultButton(text: "Save", onPress: (){},)
          ],
        ),
      ),
    );
  }
}