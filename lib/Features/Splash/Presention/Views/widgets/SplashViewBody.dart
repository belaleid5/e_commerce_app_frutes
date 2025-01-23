import 'package:e_commerce_app_frutes/Core/services/shared_preferences_singleton.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_images.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/screens/login_view.dart';
import 'package:e_commerce_app_frutes/Features/onBorading/Presention/Views/onBoarding_View.dart';
import 'package:e_commerce_app_frutes/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              AppAssets.assetsImagesPlant,
            ),
          ],
        ),
        SvgPicture.asset(
          AppAssets.assetsImagesLogo,
        ),
        SvgPicture.asset(
          AppAssets.assetsImagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void excuteNavigate() {
    bool isOnBoardingViewSeen =
        SharedPreferencesSingleton.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, OnBoardingView.onBordingRout);

      if (isOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.onBordingRout);
      }
    });
  }
}
