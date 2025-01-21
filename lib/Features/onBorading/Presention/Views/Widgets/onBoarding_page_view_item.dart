import 'package:e_commerce_app_frutes/Core/services/shared_preferences_singleton.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_text_styles.dart';
import 'package:e_commerce_app_frutes/Features/auth/persention/views/screens/login_view.dart';
import 'package:e_commerce_app_frutes/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem({
    super.key,
    required this.backgroundImage,
    required this.imageItem,
    required this.supTitle,
    required this.title,
    required this.isVisible,
  });
  final String backgroundImage, imageItem, supTitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(
                backgroundImage,
                fit: BoxFit.fill,
              )),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  imageItem,
                ),
              ),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      SharedPreferencesSingleton.setBool(
                          kIsOnBoardingViewSeen, true);
                      Navigator.pushReplacementNamed(
                          context, LoginView.routName);
                    },
                    child: Text(
                      "تخط",
                      style: TextStyles.regular13
                          .copyWith(color: const Color(0xFF949D9E)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37.0),
          child: Text(
            supTitle,
            style:
                TextStyles.semiBold13.copyWith(color: const Color(0xFF4E5456)),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
