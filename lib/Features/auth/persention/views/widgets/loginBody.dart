import 'package:e_commerce_app_frutes/Core/utils/app_images.dart';
import 'package:e_commerce_app_frutes/Core/widgets/customButton.dart';
import 'package:e_commerce_app_frutes/Features/auth/persention/views/widgets/social_button.dart';
import 'package:e_commerce_app_frutes/constant.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/widgets/customTextFormFiled.dart';
import 'custom_reset_password.dart';
import 'dont_have_an_account.dart';
import 'or_divider.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                keyboardType: TextInputType.emailAddress,
                hintTitle: 'البريد الألكتروني',
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFFC9CECF),
                ),
                keyboardType: TextInputType.visiblePassword,
                hintTitle: 'كلمة المرور',
              ),
              SizedBox(height: 16),
              CustomResetPassword(),
              SizedBox(height: 33),
              CustomButton(
                  // onPressed: (){},
                  titleButton: "تسجيل الدخول"),
              SizedBox(height: 33),
              DontHaveAnAccount(),
              SizedBox(height: 33),
              OrDivider(),
              SizedBox(height: 16),
              SocialButton(
                asset: AppAssets.assetsImagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل',
              ),
              SizedBox(height: 16),
              SocialButton(
                asset: AppAssets.assetsImagesApplIcon,
                title: 'تسجيل بواسطة أبل',
              ),
              SizedBox(height: 16),
              SocialButton(
                asset: AppAssets.assetsImagesFacebookIcon,
                title: 'تسجيل بواسطة فيس بوك',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
