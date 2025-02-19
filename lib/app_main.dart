import 'package:e_commerce_app_frutes/Core/helper_functions/onGenerate_routes.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_color.dart';
import 'package:e_commerce_app_frutes/Features/splash/Presention/Views/splash_view.dart';
import 'package:e_commerce_app_frutes/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppMain extends StatelessWidget {
  const AppMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale("ar"),
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: onGenerateRout,
      initialRoute: SplashView.routeName,
    );
  }
}
