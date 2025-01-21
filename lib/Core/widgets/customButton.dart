import 'package:e_commerce_app_frutes/Core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.titleButton});

  final Function()? onPressed;
  final String titleButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 54,
        child: TextButton(
        
            style: TextButton.styleFrom(
              
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              backgroundColor: AppColors.primaryColor,
            ),
            onPressed: onPressed,
            child: Text(titleButton,style: const TextStyle(color: Colors.white),)));
  }
}
