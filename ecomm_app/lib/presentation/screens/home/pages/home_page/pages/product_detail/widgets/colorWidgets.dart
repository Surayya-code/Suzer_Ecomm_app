
import 'package:flutter/material.dart';

import '../../../../../../../../global/sized_box/sized_box.dart';

class ColorWidgets extends StatelessWidget {
  final Color color;
  final void Function() onTapped;
  const ColorWidgets({
    Key? key, 
    required this.color,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap:onTapped,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color,
            ),
          ),
        ),
        AppSizedBox.sizedBox10w,
      ],
    );
  }
}
