import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/presentation/screens/home/widgets/search_field.dart';

import '../../../../../global/themes/app_colors.dart';
import 'model/product_model.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static List<ProductModel> main_product_list = [
    ProductModel("Nike Air Zoom Pegasus 36 Miami"),
    ProductModel("lENOVO Gx40q17230 Case 15.6 Toploader T210 Notebook Bag"),
    ProductModel("Wanetti Unisex Siyah Bot"),
    ProductModel("STRADIVARIUS Kadin Koyu Hardal Biker Ceket"),
    ProductModel("Nike Air Zoom DeriMood"),
  ];

  List<ProductModel> _display_list = List.from(main_product_list);

void updateList(String value){
  setState(() {
    _display_list=main_product_list.where((element) => 
    element.productTitle!.toLowerCase().contains(value.toLowerCase())).toList();
  });
}
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 const SearchField(),
                InkWell(onTap:(){},child:const Icon(Icons.mic_none_outlined)),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _display_list.length,
                itemBuilder: (context, index) => ListTile(
                  contentPadding: const EdgeInsets.only(left:24.0),
                  title: Text(
                    _display_list[index].productTitle!,
                    style: const TextStyle(
                        color: AppColors.textColor,
                        //fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
