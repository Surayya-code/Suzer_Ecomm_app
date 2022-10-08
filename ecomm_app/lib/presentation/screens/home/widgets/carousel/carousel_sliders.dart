import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../timer.dart';

// ignore: must_be_immutable
class CarouselSliders extends StatefulWidget {
    List<String> imgList = [
    "assets/images/superSaleImg.png",
    "assets/images/reccommendProduct.png",
  ];
  CarouselSliders({
    Key? key,
  }) : super(key: key);

  @override
  State<CarouselSliders> createState() => _CarouselSlidersState();
}
class _CarouselSlidersState extends State<CarouselSliders> {
  late final int activeIndex = 0;
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map((item) => ClipRRect(
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
        ))
        .toList();

    // List<String> imgList = [
    //   "assets/images/superSaleImg.png",
    //   "assets/images/reccommendProduct.png",
    // ];
    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reaseon) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            int index = widget.imgList.indexOf(url);
            return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? const Color.fromRGBO(0, 0, 0, 0.9)
                    : const Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
