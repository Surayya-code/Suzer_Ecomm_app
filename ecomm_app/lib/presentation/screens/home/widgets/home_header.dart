import 'package:flutter/material.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
         const SearchField(),
          InkWell(onTap:(){},
          child: const Icon(Icons.favorite_outline)),
          InkWell(onTap:(){},child: const Icon(Icons.notifications_outlined)),
      ],
    );
  }
}
