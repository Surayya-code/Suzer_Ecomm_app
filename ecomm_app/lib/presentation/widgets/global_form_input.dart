import 'package:flutter/material.dart';

///Sureyya_global_input
class GlobalFormInput extends StatelessWidget {
  final TextEditingController controller;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final FocusNode focus;
  final void Function(String) onChanged;
  final String? Function(String?) validator;
  final String labelText;
  final String? hintText;
  final bool obscureText;

  const GlobalFormInput({
    Key? key,
    required this.controller,
    this.suffixIcon,
    this.prefixIcon,
    required this.focus,
    required this.onChanged,
    required this.validator,
    required this.labelText,
    this.hintText, 
    this.obscureText=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText,
      onChanged: onChanged,
      validator: validator,
      controller: controller,
      focusNode: focus,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        hintText: hintText,
        labelText: labelText,
        errorText: null,
        errorStyle: const TextStyle(
          fontSize: 0,
          height: 0,
        ),
      ),
    );
  }
}
