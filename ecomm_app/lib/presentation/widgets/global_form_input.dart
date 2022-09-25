import 'package:flutter/material.dart';
import '../screens/themes/app_colors.dart';

///Sureyya_global_input
class GlobalFormInput extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller;
  final IconData? suffixIcon;
  final IconData prefixIcon;
  final FocusNode focus;
  final void Function(String) onChanged;
  final String? Function(String?) validator;
  final bool isMail;
  final String labelText;
  final String hintText;

  GlobalFormInput({
    Key? key,
    required this.controller,
    this.suffixIcon,
    required this.prefixIcon,
    required this.focus,
    required this.onChanged,
    required this.validator,
    required this.isMail,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            onChanged: onChanged,
            validator: validator,
            controller: controller,
            focusNode: focus,
            decoration: InputDecoration(
              prefixIcon: Icon(prefixIcon),
              hintText: hintText,
              labelText: labelText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: isMail ? AppColors.lightGrey : AppColors.primaryBlue,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: AppColors.errorColor,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: AppColors.errorColor,
                ),
              ),
            ),
          ),
       
        ],
      ),
    );
  }
}
