import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:suzer_ecom_appp/global/constants/api_constants.dart';

import '../models/product_card_model.dart';

class CartService {
 
   Future<List<dynamic>> fetchCarts() async {
      Uri cartUrl = Uri.parse(ApiConstants.getCartUrl);
      http.Response response = await http.get(cartUrl);
    
    if (response.statusCode == 200) {

      final List data = json.decode(response.body);

      List<ProductCardModel> carts = [];
      carts = data.map((e) => ProductCardModel.fromJson(e)).toList();
      return carts;
    } else {
      throw Exception();
    }    
  }

  // Future<List<dynamic>> fetchProducts(productId) async {
  //   Uri productUrl = Uri.parse(ApiConstants.getProductUrl+ productId.toString());
  //   http.Response responsee = await http.get(productUrl);

  //   if (responsee.statusCode == 200) {
  //     final List data = json.decode(responsee.body);
  //     List<ProductCardModel> carts = [];
  //     carts = data.map((e) => ProductCardModel.fromJson(e)).toList();
  //     return carts;
  //   } else {
  //     throw Exception();
  //   }

    
  // }

  
}
