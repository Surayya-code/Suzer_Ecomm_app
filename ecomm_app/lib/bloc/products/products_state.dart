part of 'products_bloc.dart';

@immutable
abstract class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductFetchLoading extends ProductsState {}

class ProductFetchSuccess extends ProductsState {
  final List<ProductCardModel> productList;

  ProductFetchSuccess({required this.productList});
}

class ProductFetchFailure extends ProductsState {
  final FailureModel failureModel;

  ProductFetchFailure({required this.failureModel});
}
