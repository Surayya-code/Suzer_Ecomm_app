import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suzer_ecom_appp/constants.dart';
import 'components/data.dart';
import 'components/flash_sale.dart';
import 'components/home_header.dart';
import 'widgets/carousel/carousel_sliders.dart';
import 'widgets/categories/categories.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> buildCategories() {
    return Data.generateCategories()
        .map((e) => Container(
              padding: const EdgeInsets.only(left: 15, bottom: 18),
            ))
        .toList();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const HomeHeader(),
            const SizedBox(
              height: 10,
            ),
            CarouselSliders(),
            const Categories(),
            const SizedBox(
              height: 5,
            ),
            FlashSale(
              text: 'Flash sale',
              press: () {},
            ),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.all(5),
              children: Data.generateProducts()
                  .map(
                    (e) => Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      elevation: 0,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                e.image,
                                height: 90,
                                width: double.infinity,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: e.type,
                                  style: const TextStyle(
                                    color: primaryColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: e.title,
                                  style: const TextStyle(
                                    color: primaryColor,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Column(
                                children: [
                                  RichText(
                                    textAlign: TextAlign.justify,
                                    text: TextSpan(
                                      text: "\$ ${e.price}",
                                      style: const TextStyle(
                                        color: blueColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text: "\$ ${e.price}",
                                          style: const TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: primaryLightColor,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      RichText(
                                        textAlign: TextAlign.right,
                                        text: TextSpan(
                                            text: "\$ ${e.price}",
                                            style: const TextStyle(
                                              color: errorColor,
                                              fontSize: 16,
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
             Stack(
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
                    children: const[
                       Text(
                        "Recomended Product",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5,),
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
          ),
          ],
        ),
        ),
      ),
       bottomNavigationBar:BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(icon:SvgPicture.asset("assets/icons/Home.svg",),iconSize: 60, onPressed: () {},),
        IconButton(icon: SvgPicture.asset("assets/icons/Explore.svg"),iconSize: 60, onPressed: () {}),
        IconButton(icon: SvgPicture.asset("assets/icons/Cart.svg"),iconSize: 60, onPressed: () {}),
        IconButton(icon: SvgPicture.asset("assets/icons/Offer.svg"),iconSize: 60, onPressed: () {}),
        IconButton(icon: SvgPicture.asset("assets/icons/Profile.svg"),iconSize:60, onPressed: () {}),
      ],
    ),
  ),
    );
  }
}
/* Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      elevation: 0,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/protuct_5.png",
                                height: 90,
                                width: double.infinity,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), */

// ElevatedButton(
                                  //   onPressed: () {},
                                  //   child: const Icon(
                                  //     Icons.add,
                                  //     color: Colors.white,
                                  //   ),
                                  //   style: ElevatedButton.styleFrom(
                                  //     backgroundColor: blueColor,
                                  //     shape: RoundedRectangleBorder(
                                  //         borderRadius: BorderRadius.circular(30),),
                                  //     ),
                                  //   ),