import 'package:flutter/cupertino.dart';
import 'package:suzer_ecom_appp/global/styles/app_text_styles.dart';

import '../data/card_data.dart';

class MyCard extends StatelessWidget {
  final CardModel card;
  const MyCard({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: card.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "CARD NAME",
                  style: AppTextStyles.myCardTitle,
                  ),
                  Text(
                    card.cardHolderName,
                   style: AppTextStyles.myCardSubTitle,
                  ),
                ],
              ),
              Text(
                card.cardNumber,
             style: AppTextStyles.myCardSubTitle,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "EXP DATE",
                        style: AppTextStyles.myCardTitle,
                      ),
                      Text(
                        card.expDate,
                        style: AppTextStyles.myCardSubTitle,
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "CVV NUMBER",
                        style: AppTextStyles.myCardTitle,
                      ),
                      Text(
                        card.cvv,
                       style: AppTextStyles.myCardSubTitle,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/images/mcard.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
