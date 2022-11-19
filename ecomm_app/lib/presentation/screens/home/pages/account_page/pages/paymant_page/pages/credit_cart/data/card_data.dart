import 'package:flutter/material.dart';

import '../../../../../../../../../../global/themes/app_colors.dart';

class CardModel {
  String cardHolderName;
  String cardNumber;
  String expDate;
  String cvv;
  Color cardColor;

  CardModel({
    required this.cardHolderName,
    required this.cardNumber,
    required this.cvv,
    required this.expDate,
    required this.cardColor,
  });
}

List<CardModel> myCards = [
  CardModel(
    cardHolderName: "Surayya Hasanova",
    cardNumber: "****  ****  ****  1234",
    cvv: "**4",
    expDate: "12/22",
    cardColor: AppColors.primaryCardColor,
  ),
  CardModel(
    cardHolderName: "Zarina Huseynova",
    cardNumber: "****  ****  ****  4321",
    cvv: "**1",
    expDate: "01/23",
    cardColor: AppColors.secondaryCardColor,
  ),
];