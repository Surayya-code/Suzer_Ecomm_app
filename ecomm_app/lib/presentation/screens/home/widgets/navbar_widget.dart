import 'package:flutter/material.dart';

import '../models/navbar_item_model.dart';
import 'navbar_item_widget.dart';

class NavBarWidget extends StatefulWidget {
  final PageController pageController;
  const NavBarWidget({
    super.key,
    required this.pageController,
  });

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: NavBarModel.navBarList
            .map((NavBarModel navBarItem) => NavBarItemWidget(
                  icon: navBarItem.icon,
                  index: navBarItem.index,
                  onTap: () {
                    _selectedItemIndex = navBarItem.index;
                    widget.pageController.jumpToPage(_selectedItemIndex);
                    setState(() {});
                  },
                  isSelectedItem: _selectedItemIndex == navBarItem.index,
                ))
            .toList(),
      ),
    );
  }
}
