import 'package:e_commerce_app_frutes/Core/utils/app_color.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomFeaturedButtonItem extends StatelessWidget {
  const CustomFeaturedButtonItem({
    super.key,
    this.onPressed,
  });

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 32,
        child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              backgroundColor: Colors.white,
            ),
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: FittedBox(
                child: Text(
                  "تسوق الأن",
                  style: TextStyles.bold13.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            )));
  }
}
