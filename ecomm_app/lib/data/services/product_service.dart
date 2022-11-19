import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:suzer_ecom_appp/global/constants/api_constants.dart';

import '../models/product_card_model.dart';



class ProductService {
  Uri productUrl = Uri.parse(ApiConstants.getProductUrl); 

   Future<List<dynamic>> fetchProducts() async {
    Uri productUrl = Uri.parse(ApiConstants.getProductUrl);
   
    http.Response response = await http.get(productUrl);

    if (response.statusCode == 200) {

      final List data = json.decode(response.body);
      List<ProductCardModel> products = [];
      products = data.map((e) => ProductCardModel.fromJson(e)).toList();
      return products;
    } else {
      throw Exception();
    }
  }
}
