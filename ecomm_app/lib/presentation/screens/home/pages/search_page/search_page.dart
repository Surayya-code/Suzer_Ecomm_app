import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/sized_box/sized_box.dart';
import 'package:suzer_ecom_appp/presentation/screens/home/widgets/search_field.dart';

import '../../../../../data/models/product_card_model.dart';
import '../../../../../global/themes/app_colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static List<ProductCardModel> mainProductList = [
    ProductCardModel(
      title: "Mens Cotton Jacket",
      category: "men's clothing",
      price: 55.99,
      image: "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
    ),
    ProductCardModel(
      title: "Mens Casual Premium Slim Fit T-Shirts ",
      category: "men's clothing",
      price: 22.33,
      image:
          "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
    ),
    ProductCardModel(
      title: "White Gold Plated Princess",
      
      category: "jewelery",
      price: 9.99,
      image: "https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg",
    ),
    ProductCardModel(
      title: "Opna Women's Short Sleeve Moisture",
      category: "men's clothing",
      price: 7.95,
      image: "https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg",
    ),
    ProductCardModel(
      title: "DANVOUY Womens T Shirt Casual Cotton Short",
      category: "women's clothing",
      price: 12.99,
      image: "https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg",
    ),
    ProductCardModel(
      title: "Rain Jacket Women Windbreaker Striped Climbing Raincoats",
      category: "women's clothing",
      price: 39.99,
      image: "https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg",
    ),
    ProductCardModel(
      title: "BIYLACLESEN Women's 3-in-1 Snowboard Jacket Winter Coats",
      category: "women's clothing",
      price: 56.99,
      image: "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg",
    ),
    ProductCardModel(
      title: "Mens Cotton Jacket",
      category: "men's clothing",
      price: 55.99,
      image: "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
    ),
    ProductCardModel(
      title: "DANVOUY Womens T Shirt Casual Cotton Short",
      category: "women's clothing",
      price: 12.99,
      image: "https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg",
    ),
    ProductCardModel(
      title: "Mens Casual Premium Slim Fit T-Shirts ",
      category: "men's clothing",
      price: 22.33,
      image:
          "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
    ),
  ];

  List<ProductCardModel> displayList = List.from(mainProductList);

  void updateList(String value) {
    setState(() {
      displayList = mainProductList
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchField(
                  onChanged: (value) => updateList(value),
                ),
                InkWell(
                    onTap: () {}, child: const Icon(Icons.mic_none_outlined)),
              ],
            ),
            Expanded(
              child: displayList.isEmpty
                  ? Center(
                      child: Column(
                        children: [
                          Image.asset("assets/images/notFoundProduct.png"),
                          AppSizedBox.sizedBox10h,
                          const Text(
                            " :( Not Found Product",
                            style: TextStyle(
                                color: AppColors.errorColor, fontSize: 24),
                          )
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ListView.builder(
                        itemCount: displayList.length,
                        itemBuilder: (context, index) => ListTile(
                          contentPadding: const EdgeInsets.only(left: 24.0),
                          title: Text(
                            displayList[index].title!,
                            style: TextStyle(
                                color: AppColors.titleTextColor,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text('${displayList[index].category}'),
                          trailing: Text(
                            '${displayList[index].price}',
                            style: TextStyle(color: AppColors.titleTextColor),
                          ),
                          leading: Image.network(displayList[index].image!),
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
