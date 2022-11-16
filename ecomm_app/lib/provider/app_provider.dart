import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier{

bool isLiked=false;
late final TextEditingController textEditingController;

void toggleLike(){
   isLiked=!isLiked;
  notifyListeners();
}

void nextPage(){
  notifyListeners();
}

void clearField(){
textEditingController.clear();
notifyListeners();
}
}