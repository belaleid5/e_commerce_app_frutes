import 'package:e_commerce_app_frutes/Core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, required this.hintTitle,  this.suffixIcon, this.keyboardType,
  });


  final String hintTitle;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
         keyboardType:keyboardType ,
        decoration: InputDecoration(
          hintText: hintTitle,
          hintStyle: TextStyles.bold13.copyWith(
            color: const Color(0xFF949D9E),
          ),
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: const Color(0xFFF9FAFA),
          border: buildBorder(),
          enabledBorder:buildBorder(),
          focusedBorder: buildBorder(),
        ),
    );
  }







  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide:
          const BorderSide(width:1,color: Color(0xFFE6E9E9))

        );
  }
}
