import 'package:e_commerce_app_frutes/Features/onBorading/Presention/Views/Widgets/onBoarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const onBordingRout = "onBorading";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingViewBody(),
    );
  }
}
