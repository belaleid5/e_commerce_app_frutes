import 'package:e_commerce_app_frutes/Core/utils/app_color.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_images.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined))),
          Positioned.fill(
              child: SizedBox(
            height: 20,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Image.asset(AppAssets.assetsImagesWatermelonTest),
                ),
                const SizedBox(
                  height: 8,
                ),
                ListTile(
                  title: const Text('بطيخ', style: TextStyles.bold13),

                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '30جنية ',
                          style: TextStyles.bold13
                              .copyWith(color: AppColors.secandryColor),
                        ),
                        TextSpan(
                          text: '/',
                          style: TextStyles.bold13
                              .copyWith(color: AppColors.lightSecandryColor),
                        ),
                        TextSpan(
                          text: 'الكيلو',
                          style: TextStyles.bold13
                              .copyWith(color: AppColors.lightSecandryColor),
                        ),
                      ],
                    ),
                  ),
                  trailing: const CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),

                  // Right-side icon
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
