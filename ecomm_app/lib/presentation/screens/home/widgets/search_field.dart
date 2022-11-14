import 'package:flutter/material.dart';
import '../../../../global/themes/app_colors.dart';


class SearchField extends StatelessWidget {
 final void Function(String) onChanged;

   const SearchField({
    Key? key, required this.onChanged,
    
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 50,
      decoration: BoxDecoration(
        //color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        scrollPadding: const EdgeInsets.all(10),
        onChanged: onChanged,
        style: TextStyle(color: AppColors.titleTextColor,fontWeight: FontWeight.w400),
        decoration:  InputDecoration(
          floatingLabelAlignment: FloatingLabelAlignment.center,
          focusColor: AppColors.primaryColor,
          filled: true,
         // fillColor: AppColors.textColor.withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
         borderSide:const  BorderSide(color: AppColors.primaryColor),         
        ),
          hintText: "Search Products",
          hintStyle: const TextStyle(color: AppColors.textColor,fontStyle: FontStyle.italic),
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.cancel_sharp),
          contentPadding:const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 9,
          ),
        ),
        
      ),
    );
  }
}