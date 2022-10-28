import 'package:flutter/material.dart';

class NavBarModel {
  IconData icon;
  int index;

  NavBarModel({
    required this.icon,
    required this.index,
  });

  static List<NavBarModel> navBarList = [
    NavBarModel(icon: Icons.home_rounded, index: 0),
    NavBarModel(icon: Icons.search_rounded, index: 1),
    NavBarModel(icon: Icons.shopping_cart_rounded, index: 2),
    NavBarModel(icon: Icons.local_offer_rounded, index: 3),
    NavBarModel(icon: Icons.person_rounded, index: 4),
  ];
}
