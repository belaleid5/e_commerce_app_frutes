import 'package:e_commerce_app_frutes/Features/OnBoardin/Presention/Views/onboarding_view.dart';
import 'package:e_commerce_app_frutes/Features/Splash/Presention/Views/Splash_View.dart';
import 'package:flutter/material.dart';

MaterialPageRoute onGenerateRout(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
      
          case OnboardingView.onboarding:
      return MaterialPageRoute(builder: (context) => const OnboardingView());



      default :
          return MaterialPageRoute(builder: (context) => const Scaffold());
      
  }
}
