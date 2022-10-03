import 'package:flutter/material.dart';
import '../../../../constants.dart';

class IconBtnCounter extends StatelessWidget {
  const IconBtnCounter({
    Key? key,  
      required this.svgSrc,
      this.numOfItems=0,
      required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: primaryLightColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Image.asset(svgSrc),
            ),
            if(numOfItems!=0)
          Positioned(
            right: 0,
            top: -3,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
              color: Colors.red,
              shape:BoxShape.circle,
              border: Border.all(width: 1.5,
              color: Colors.white),
              ),
              child:  Text("$numOfItems",
              style: const TextStyle(fontSize: 10,
              height: 2,
              color: Colors.black,
              fontWeight: FontWeight.w600,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
