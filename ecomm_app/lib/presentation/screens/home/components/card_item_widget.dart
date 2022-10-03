import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  final VoidCallback onClick;
  const CardItemWidget({
    Key? key,
    required this.onClick,
  }) 
  : super(key: key,);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
       height: 150,
       color: Colors.amber,
       width: 200,
      child: Image.asset('assets/images/superSaleImg.png'),
        
      ),
      
    );
  }
}