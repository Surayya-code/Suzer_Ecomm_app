import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/data/models/product_card_model.dart';
import 'package:suzer_ecom_appp/data/services/product_service.dart';
import 'package:suzer_ecom_appp/global/sized_box/sized_box.dart';
import 'package:suzer_ecom_appp/presentation/widgets/global_loading_widget.dart';
import '../../../../../global/themes/app_colors.dart';
import '../../widgets/carousel_sliders.dart';
import '../../widgets/categories.dart';
import '../../widgets/data.dart';
import '../../widgets/flash_sale.dart';
import '../../widgets/home_header.dart'; 
import 'widgets/product_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future productFuture;

  @override
  void initState() {
    super.initState();
    productFuture=ProductService.fetchProducts();
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AppSizedBox.sizedBox16h,
         const Padding(
           padding:  EdgeInsets.all(16.0),
           child:  HomeHeader(),
         ),
         AppSizedBox.sizedBox10h,
        CarouselSliders(),
        const Categories(),
         AppSizedBox.sizedBox5h,
        FlashSale(
          text: 'Flash sale',
          press: () {},
        ),
        SizedBox(
          height: 240,
          child: FutureBuilder(
            future: productFuture,
            builder: (context,AsyncSnapshot snapshot) {
              if(!snapshot.hasData){
                return const GloabalLoading();
              }
              List<ProductCardModel>productsList=snapshot.data;
              return ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left:16),
                 itemCount: Data.generateProducts().length,
                 itemBuilder: (context,index){
                //ProductModel product=Data.generateProducts()[index];
               ProductCardModel product=productsList[index];
                return  ProductItemWidget(product: product,);
              }, separatorBuilder: ( context, index)=>
               AppSizedBox.sizedBox16w,
              );
            }
          ),
        ),
        // GridView.builder(
        //   shrinkWrap: true,
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     childAspectRatio: 0.9,
        //     crossAxisCount: 2),
        //   itemCount: Data.generateProducts().length,
        //   physics: const ClampingScrollPhysics(),
        //   padding: const EdgeInsets.all(5),
        //   itemBuilder: (context,index)  {
        //     ProductModel product=Data.generateProducts()[index];
        //     return  ProductItemWidget(product: product,);
        //   },
        // ),
        const RecommendedProduct(),
      ],
    );
  }
}

class RecommendedProduct extends StatelessWidget {
  const RecommendedProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset(
            'assets/images/reccommendProduct.png',
            fit: BoxFit.cover,
            width: 1000,
          ),
        ),
        Positioned(
          //bottom: 50.0,
          top: 120,
          left: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              children: const [
                Text(
                  "Recomended Product",
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "We recommend the best for you",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
