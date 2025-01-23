import 'package:e_commerce_app_frutes/Core/utils/app_color.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox(
      {super.key, required this.ischecked, required this.onChecked});

  final bool ischecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!ischecked);
      },
      child: AnimatedContainer(
        height: 24,
        width: 24,
        duration: const Duration(milliseconds: 100),
        decoration: ShapeDecoration(
            color: ischecked ? AppColors.primaryColor : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                width: 1.50,
                color: ischecked ? Colors.transparent : const Color(0xFFDCDEDE),
              ),
            )),
        child: ischecked
            ? Padding(
                padding: const EdgeInsets.all(0),
                child: SvgPicture.asset(
                  AppAssets.assetsImagesCheck,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
