import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier{

bool isLiked=false;

void toggleLike(){
   isLiked=!isLiked;
  notifyListeners();
}

void nextPage(){
  notifyListeners();
}
}