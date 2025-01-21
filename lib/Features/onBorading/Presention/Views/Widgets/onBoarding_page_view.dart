import 'package:e_commerce_app_frutes/Core/utils/app_color.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_images.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_text_styles.dart';
import 'package:e_commerce_app_frutes/Features/onBorading/Presention/Views/Widgets/onBoarding_page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        OnBoardingPageViewItem(
          isVisible: true,
          backgroundImage: AppAssets.assetsImagesPageViewItem1BackgroundImage,
          imageItem: AppAssets.assetsImagesPageViewItem1Image,
          supTitle:
              'اكتشف تجربة تشوق فريدة مع FruitHub. استكشف مجموعتنا الواسعة من الفواكة الطازجة الممتازة واحصل علي افضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "  مرحباً بك في",
                style: TextStyles.bold23,
              ),
              Text(
                " HUB",
                style:
                    TextStyles.bold23.copyWith(color: AppColors.secandryColor),
              ),
              Text(
                "Fruit",
                style:
                    TextStyles.bold23.copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
        const OnBoardingPageViewItem(
            isVisible: false,
            backgroundImage: AppAssets.assetsImagesPageViewItem2BackgroundImage,
            imageItem: AppAssets.assetsImagesPageViewItem2Image,
            supTitle:
                "تقدم لك افضل الفواكة المختارة بعناية واطلع علي التفاصيل بالصور والتقيمات للتأكد من اختيار الفاكهة المثالية",
            title: Text(
              "ابحث وتسوق",
              style: TextStyle(
                fontSize: 23,
                fontFamily: "Cairo",
                fontWeight: FontWeight.w700,
                color: Colors.black,
                height: 0,
              ),
            )),
      ],
    );
  }
}
