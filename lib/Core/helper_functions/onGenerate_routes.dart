import 'package:e_commerce_app_frutes/Features/home/views/home_view.dart';
import 'package:e_commerce_app_frutes/Features/splash/Presention/Views/splash_view.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/screens/sign_in_view.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/screens/sign_up_view.dart';
import 'package:e_commerce_app_frutes/Features/on_borading/Presention/Views/onBoarding_View.dart';
import 'package:flutter/material.dart';

MaterialPageRoute onGenerateRout(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case OnBoardingView.onBordingRout:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    case SignInView.routName:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case SignUpView.routName:
      return MaterialPageRoute(builder: (context) => const SignUpView());

    case HomeView.routName:
      return MaterialPageRoute(builder: (context) => const HomeView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
