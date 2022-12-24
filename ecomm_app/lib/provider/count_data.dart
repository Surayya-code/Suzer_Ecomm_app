import 'package:flutter/material.dart';

class CountData extends ChangeNotifier{
  int _count=0;
  int get count => _count;

  void incrCount(){
    _count++;
    notifyListeners();
  }

  void decrCount(){
    _count--;
    notifyListeners();
  }
}