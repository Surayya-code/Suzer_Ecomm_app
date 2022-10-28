import 'package:flutter/material.dart';
import '../../global/styles/app_text_styles.dart';

class NoAccountText extends StatelessWidget {
  final String accountText;
  final String screenText;
  final void Function() onTap;
  const NoAccountText({
    Key? key,
    required this.accountText,
    required this.screenText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('$accountText ')),
        GestureDetector(
          onTap: onTap,
          child: Text(
            ' $screenText',
            style: AppTextStyles.registerTextStyle,
          ),
        ),
      ],
    );
  }
}
