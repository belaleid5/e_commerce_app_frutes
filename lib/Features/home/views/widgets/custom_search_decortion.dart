import 'package:e_commerce_app_frutes/Core/functions/buil_border.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_images.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchDecoration extends StatelessWidget {
  const CustomSearchDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0x0A000000),
          offset: Offset(0, 2),
          blurRadius: 9,
        ),
      ]),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: "...ابحث عن",
          hintStyle: TextStyles.regular13.copyWith(
            color: const Color(0xFF949D9E),
          ),
          prefixIcon: SizedBox(
              width: 20,
              child: Center(
                  child: SvgPicture.asset(AppAssets.assetsImagesSearchIcon))),
          suffixIcon: SizedBox(
              width: 20,
              child: Center(
                  child: SvgPicture.asset(AppAssets.assetsImagesFilter))),
          filled: true,
          fillColor: Colors.white,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }
}
