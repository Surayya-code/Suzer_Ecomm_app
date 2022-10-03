import 'package:flutter/material.dart';
import 'icon_btn_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
           IconBtnCounter(
           svgSrc: "assets/images/favorite.png",
           press: (){},
           ),
           IconBtnCounter(
           svgSrc: "assets/images/notificationIcon.png",
           press: (){},
           numOfItems: 13),
        ],
      ),
    );
  }
}
