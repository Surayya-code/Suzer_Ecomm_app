import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../data/models/product_card_model.dart';
import '../../../../../../global/sized_box/sized_box.dart';
import '../../../../../../global/themes/app_colors.dart';
import '../../../../../../provider/count_data.dart';

class CardElementWidget extends StatelessWidget {
  final ProductCardModel? product;
  const CardElementWidget({super.key, this.product});


  @override
  Widget build(BuildContext context) {
    //int itemCount=0;
    return  Container(
              // ProductCardModel product = productList[index];
                margin: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: AppColors.primaryColor,
                      child: Image.asset("assets/images/product_5.png"),
                    ),
                    AppSizedBox.sizedBox10w,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nike Air Zoom Pegasus\n36 Miami",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: AppColors.titleTextColor),
                        ),
                        AppSizedBox.sizedBox10h,
                        const Text(
                          "\$299.43",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            if( Provider.of<CountData>(context,listen: false).count>0){
                             Provider.of<CountData>(context,listen: false).decrCount();
                            }
                            
                            // setState(() {
                            //   itemCount!=0 ? itemCount--: itemCount++;
                            // });
                          },
                          child: Container(
                              color: AppColors.iconColor,
                              child: const Icon(Icons.remove)),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Consumer<CountData>(
                            builder: (context,data,child) {
                              return Text('${data.count}',
                                //itemCount.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.titleTextColor),
                              );
                            }
                          ),
                        ),
                        InkWell(
                          onTap:(){
                             Provider.of<CountData>(context,listen: false).incrCount();
                            // setState(() {
                            //   itemCount++;
                            // });
                          },
                          child: Container(
                              color: AppColors.iconColor,
                              child: const Icon(Icons.add)),
                        ),
                      ],
                    ),
                  ],
                ),
              );
  }
}