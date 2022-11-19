
import 'package:suzer_ecom_appp/data/models/failure_model.dart';
import 'package:suzer_ecom_appp/locator.dart';

import '../contractor/i_cart_service.dart';
import '../services/cart_service.dart';


class ImplCartService implements ICartService{
  final CartService iCartService=locator.get<CartService>();
  @override
  Future<dynamic> fetchCarts()async {
    try { 
      final result= await iCartService.fetchCarts();
      print('success');
      return result;
    } catch (e) {
      print('${e.toString()}');
      return FailureModel();
     }
  }

}