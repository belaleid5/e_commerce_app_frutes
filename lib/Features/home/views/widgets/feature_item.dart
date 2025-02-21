import 'package:e_commerce_app_frutes/Core/utils/app_images.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_text_styles.dart';
import 'package:e_commerce_app_frutes/Features/home/views/widgets/custom_featured_botton_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svgProvider;

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: itemWidth,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: itemWidth * .4,
                top: 0,
                bottom: 0,
                child: Image.asset(AppAssets.assetsImagesWatermelonTest)),
            Container(
              width: itemWidth * .5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: svgProvider.Svg(
                        AppAssets.assetsImagesFeaturedItemBackground),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 33.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "عروض العيد",
                      style: TextStyles.regular13.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      "خصم 25%",
                      style: TextStyles.bold19.copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    const CustomFeaturedButtonItem(),
                    const SizedBox(
                      height: 29,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
