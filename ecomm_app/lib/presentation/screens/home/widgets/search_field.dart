import 'package:flutter/material.dart';
import '../../../../global/themes/app_colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      //height: 50,
      decoration: BoxDecoration(
        color: AppColors.textColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        scrollPadding: const EdgeInsets.all(10),
        onChanged: (value) {},
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Search Product",
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 9,
          ),
        ),
      ),
    );
  }
}