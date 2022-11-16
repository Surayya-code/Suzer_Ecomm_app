import 'package:flutter/material.dart';
import '../../../../global/themes/app_colors.dart';


class SearchField extends StatefulWidget {
 final void Function(String) onChanged;
 

   const SearchField({
    Key? key, required this.onChanged,
    
  }) : super(key: key);
  

  @override
  State<SearchField> createState() => _SearchFieldState();
  
}

class _SearchFieldState extends State<SearchField> {
  late final TextEditingController searchController;
  @override
  void initState() {
    super.initState();
    searchController=TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller:searchController ,
        scrollPadding: const EdgeInsets.all(10),
        onChanged: widget.onChanged,
        style: TextStyle(color: AppColors.titleTextColor,fontWeight: FontWeight.w400),
        decoration:  InputDecoration(
          floatingLabelAlignment: FloatingLabelAlignment.center,
          focusColor: AppColors.primaryColor,
          filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
         borderSide:const  BorderSide(color: AppColors.primaryColor),         
        ),
          hintText: "Search Products",
          hintStyle: const TextStyle(color: AppColors.textColor,fontStyle: FontStyle.italic),
          prefixIcon: const Icon(Icons.search),
          suffixIcon:  InkWell(
            onTap:(){
              setState(() {
                searchController.clear();
              });
            },
            child: const Icon(Icons.cancel_sharp)),
           contentPadding:const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 9,
          //  suffixIcon:  Consumer<AppProvider>(
          //   builder: (BuildContext context,appProvider,child) {
          //     return InkWell(
          //       onTap:(){
          //       appProvider.clearField();
          //       },
          //       child: const Icon(Icons.cancel_sharp));
          //   }
          // ),
         
          ),
        ),
        
      ),
    );
  }
}