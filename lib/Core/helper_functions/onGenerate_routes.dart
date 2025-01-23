import 'package:e_commerce_app_frutes/Features/Splash/Presention/Views/splash_view.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/screens/login_view.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/screens/signup_view.dart';
import 'package:e_commerce_app_frutes/Features/onBorading/Presention/Views/onBoarding_View.dart';
import 'package:flutter/material.dart';

MaterialPageRoute onGenerateRout(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case OnBoardingView.onBordingRout:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    case LoginView.routName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignUpView.routName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
