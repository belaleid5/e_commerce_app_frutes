import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app_frutes/Core/services/shared_preferences_singleton.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_color.dart';
import 'package:e_commerce_app_frutes/Core/widgets/customButton.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/screens/login_view.dart';
import 'package:e_commerce_app_frutes/Features/onBorading/Presention/Views/Widgets/onBoarding_page_view.dart';
import 'package:e_commerce_app_frutes/constant.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;

  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: OnBoardingPageView(
          pageController: pageController,
        )),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                // ignore: deprecated_member_use
                : AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Visibility(
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              visible: currentPage == 1 ? true : false,
              child: CustomButton(
                  onPressed: () {
                    SharedPreferencesSingleton.setBool(
                        kIsOnBoardingViewSeen, true);
                    Navigator.pushReplacementNamed(context, LoginView.routName);
                  },
                  titleButton: "ابدء الأن")),
        ),
      ],
    );
  }
}
