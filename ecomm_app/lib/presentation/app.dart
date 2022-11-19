import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:suzer_ecom_appp/data/contractor/i_product_service.dart';
import 'package:suzer_ecom_appp/data/repositories/impl_product_service.dart';
import 'package:suzer_ecom_appp/provider/app_provider.dart';
import '../bloc/products/products_bloc.dart';
import '../global/themes/app_themes.dart';
import 'screens/sign_in/signin_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        RepositoryProvider<IProductService>(
            create: ((context) => ImplProductService())),
        BlocProvider<ProductsBloc>(
          create: (context) => ProductsBloc(context.read<IProductService>()),
        ),
        ChangeNotifierProvider(
          create: (context) => AppProvider(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Suzer E-comm",
        theme: theme(),
        home: const SignInScreen(),
        
      ),
    );
  }
}
