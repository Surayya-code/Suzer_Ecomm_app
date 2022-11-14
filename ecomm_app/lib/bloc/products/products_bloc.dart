import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:suzer_ecom_appp/data/contractor/i_product_service.dart';
import 'package:suzer_ecom_appp/data/models/failure_model.dart';

import '../../data/models/product_card_model.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final IProductService iProductService;
  ProductsBloc(this.iProductService) : super(ProductsInitial()) {
    on<ProductsEvent>((event, emit) async{
    /* -------------------------------------------------------------------------- */
    /*                              FetchProductEvent                             */
    /* -------------------------------------------------------------------------- */
      if(event is FetchProductEvent){
        emit(ProductFetchLoading());
        final result = await iProductService.fetchProducts();
        if(result is List<ProductCardModel>){
          emit(ProductFetchSuccess(productList:result));
        }else if(result is FailureModel){
          emit(ProductFetchFailure(failureModel:result ));
        }
        
      }
    });
  }
}
