import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suzer_ecom_appp/data/contractor/i_cart_service.dart';

import '../../data/models/failure_model.dart';
import '../../data/models/product_card_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final ICartService iCartService;
  CartBloc(this.iCartService) : super(CartInitial()) {
    on<CartEvent>((event, emit) async {
      if (event is FetchCartEvent) {
        emit(CartFetchLoading());
        final result = await iCartService.fetchCarts();
        if (result is List<ProductCardModel>) {
          emit(CartFetchSuccess(productList: result));
        } else if (result is FailureModel) {
          emit(CartFetchFailure(failureModel: result));
        }
      }
    });
  }
}
