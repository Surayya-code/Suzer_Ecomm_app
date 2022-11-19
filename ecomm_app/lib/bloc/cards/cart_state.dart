part of 'cart_bloc.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}
class CartFetchLoading extends CartState {}

class CartFetchSuccess extends CartState {
  final List<ProductCardModel> productList;

  CartFetchSuccess({required this.productList});
}

class CartFetchFailure extends CartState {
  final FailureModel failureModel;

  CartFetchFailure({required this.failureModel});
}
