import 'package:suzer_ecom_appp/data/contractor/i_product_service.dart';
import 'package:suzer_ecom_appp/data/models/failure_model.dart';
import 'package:suzer_ecom_appp/locator.dart';

import '../services/product_service.dart';

class ImplProductService implements IProductService{
  final ProductService iProductService=locator.get<ProductService>();
  @override
  Future<dynamic> fetchProducts()async {
    try { 
      final result= await iProductService.fetchProducts();
      print('success');
      return result;
    } catch (e) {
      print('${e.toString()}');
      return FailureModel();
     }
  }

}