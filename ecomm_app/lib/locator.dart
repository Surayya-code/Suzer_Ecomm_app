import 'package:get_it/get_it.dart';

import 'data/services/product_service.dart';

GetIt locator =GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => ProductService());
}