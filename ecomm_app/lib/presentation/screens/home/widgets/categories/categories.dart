import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key,
  
  }) : super(key: key);
  // final String text;
  // final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/shirt.svg", "text": "Man Shirt"},
      {"icon": "assets/icons/dress.svg", "text": "Woman Dress"},
      {"icon": "assets/icons/man bag.svg", "text": "Man Bag"},
      {"icon": "assets/icons/woman bag.svg", "text": "WoMan Bag"},
      {"icon": "assets/icons/dress.svg", "text": "Woman Dress"}
     ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoryCard(
              icon: categories[index]["icon"],
              press: () {},
              text: categories[index]["text"],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  //final List<Map<String, dynamic>> categories;
  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(0, 30, 63, 163),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
