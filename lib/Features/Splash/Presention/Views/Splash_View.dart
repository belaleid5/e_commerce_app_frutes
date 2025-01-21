import 'package:e_commerce_app_frutes/Features/Splash/Presention/Views/widgets/SplashViewBody.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static const routeName = "splash";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: SafeArea(child: SplashViewBody()),
      
    );
  }
}
