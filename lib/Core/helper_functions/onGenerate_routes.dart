import 'package:e_commerce_app_frutes/Features/Splash/Presention/Views/splash_view.dart';
import 'package:e_commerce_app_frutes/Features/auth/persention/views/screens/login_view.dart';
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


      default :
          return MaterialPageRoute(builder: (context) => const Scaffold());
      
  }
}
