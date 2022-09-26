import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
     children: List.generate(errors.length,
    (index) => formErrorText(error: errors[index]))
    );
  }

  Row formErrorText({String? error}) {
    return Row(
        children: [
          //Image.asset("assets/images/Vector40.png"),
          SvgPicture.asset("assets/icons/error_svg.svg",
          height: 14,
          width: 14,),
          const SizedBox(width: 10,),
           Text(error!),
        ],
      );
  }
}

