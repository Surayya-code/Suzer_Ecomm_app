import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../widgets/timer.dart';
import 'home_header.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            CarouselDots(),
          ],
        ),
      ),
    );
  }
}

class CarouselDots extends StatefulWidget {
  final List<String> imgList = [
    "assets/images/superSaleImg.png",
    "assets/images/reccommendProduct.png",
  ];
  CarouselDots({
    Key? key,
  }) : super(key: key);

  @override
  State<CarouselDots> createState() => _CarouselDotsState();
}

class _CarouselDotsState extends State<CarouselDots> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map((item) => Container(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(5.0),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      item,
                      fit: BoxFit.contain,
                      width: 1000,
                    ),
                    Positioned(
                      bottom: 20.0,
                      top: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: const Text(
                          "Super Flash Sale \n50% Off ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const CountDownPage(),
                  ],
                ),
              ),
            ))
        .toList();

    return CarouselSlider(
        items: imageSliders,
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 2.0,
        ));
  }
}
