import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/sized_box/sized_box.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../../../../../../global/themes/app_colors.dart';
import '../../../../../../../../widgets/global_default_button.dart';

class BrithdayScreen extends StatelessWidget {
  const BrithdayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title:  Text(
          "Birthday",
          style: TextStyle(color: AppColors.titleTextColor, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children:  [
            Text("Your Birthday",style: TextStyle(
              color:AppColors.titleTextColor, fontSize: 24,),
              textAlign: TextAlign.start,),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "12/12/1992",
                suffixIcon: Icon(Icons.calendar_month),
              ),
            ),
            AppSizedBox.sizedBox10h,
             SfDateRangePicker(
                     // onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                      initialSelectedRange: PickerDateRange(
                          DateTime.now().subtract(const Duration(days: 4)),
                          DateTime.now().add(const Duration(days: 3))),
                    ),
                    const SizedBox(height: 50,),
                   // AppSizedBox.sizedBox250,
            GlobalDefaultButton(text: "Save", onPress: (){},)

          ],
        ),
      ),
    );
  }
}