import 'package:e_commerce_app_frutes/Core/helper_functions/onGenerate_routes.dart';
import 'package:e_commerce_app_frutes/Features/Splash/Presention/Views/Splash_View.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FruitHuB());
}

class FruitHuB extends StatelessWidget {
  const FruitHuB({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      onGenerateRoute: onGenerateRout,
      initialRoute: SplashView.routeName,
    );
  }
}
