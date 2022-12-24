import 'package:flutter/material.dart';

import '../../../../../../../../../global/sized_box/sized_box.dart';
import '../../../../../../../../../global/styles/app_text_styles.dart';
import '../../../../../../../../../global/themes/app_colors.dart';
import '../../../../../../../../widgets/global_default_button.dart';
import 'data/card_data.dart';
import 'widgets/my_card.dart';

class CreditDebitCart extends StatelessWidget {
  const CreditDebitCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
            textAlign: TextAlign.start,
            "Credit Card or Debit",
            style: TextStyle(color: AppColors.titleTextColor, fontSize: 24)),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child:Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             SizedBox(
              height: 200,
              child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                      return MyCard(
                        card: myCards[index],
                      );
                    }, 
                separatorBuilder: (context,index){
                  return const SizedBox(width: 10,);
                },  
                itemCount: myCards.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,),
                
             ),
             const SizedBox(height: 30,),
             const Text("Resent Trasations",
               style: AppTextStyles.bodyText,),
                AppSizedBox.sizedBox40h,
                  GlobalDefaultButton(text: "Add Card", onPress: (){})
          ]), 
        ) ,
        ),
    
    );
  }
}