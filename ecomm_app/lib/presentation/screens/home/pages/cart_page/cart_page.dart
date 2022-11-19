import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/sized_box/sized_box.dart';
import 'package:suzer_ecom_appp/presentation/widgets/global_default_button.dart';
import '../../../../../global/themes/app_colors.dart';
import 'widgets/card_element_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
            textAlign: TextAlign.start,
            "Your Cart",
            style: TextStyle(color: AppColors.titleTextColor, fontSize: 24)),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView.separated(
                  itemCount: 1,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(16),
                  separatorBuilder: (BuildContext context, int index) =>
                      AppSizedBox.sizedBox16w,
                  itemBuilder: (context, index) {
                    return  const CardElementWidget(
                    );
                    }
                    )
          //   child: BlocBuilder<CartBloc, CartState>(
          //     builder: (context, state) {
          //       if(state is CartFetchLoading){
          //         return const GloabalLoading();
          //       }else if(state is CartFetchFailure){
          //         return Center(
          //           child: Text(state.failureModel.failureMessage,
          //           style: const TextStyle(color: AppColors.errorColor),),
          //         );
          //       }else if(state is CartFetchSuccess){
          //         List<ProductCardModel> cartList = state.productList;
          //       return ListView.separated(
          //         itemCount: cartList.length,
          //         shrinkWrap: true,
          //         padding: const EdgeInsets.all(16),
          //         separatorBuilder: (BuildContext context, int index) =>
          //             AppSizedBox.sizedBox16w,
          //         itemBuilder: (context, index) {
          //           ProductCardModel product = cartList[index];
          //           return  CardElementWidget(
          //             product:product ,
          //           );
          //         },
          //       );
          //     }else {
          //       print('0');
          //       return const SizedBox();
          //     }
          //   }
          //  ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: GlobalDefaultButton(
                            onPress: () {},
                            text: 'Check Out',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
