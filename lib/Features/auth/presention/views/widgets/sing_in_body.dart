import 'package:e_commerce_app_frutes/Core/functions/build_error_bar.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_images.dart';
import 'package:e_commerce_app_frutes/Core/widgets/customButton.dart';
import 'package:e_commerce_app_frutes/Core/widgets/custom_text_form_password.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/Cubits/sing_in_cubit/cubit/sign_in_cubit.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/screens/sign_up_view.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/widgets/social_button.dart';
import 'package:e_commerce_app_frutes/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/widgets/customTextFormFiled.dart';
import 'custom_reset_password.dart';
import 'dont_have_an_account.dart';
import 'or_divider.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  late String email, passowrd;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: fromKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                keyboardType: TextInputType.emailAddress,
                hintTitle: 'البريد الألكتروني',
              ),
              const SizedBox(
                height: 24,
              ),
              CustomFiledPassword(
                onSaved: (value) {
                  passowrd = value!;
                  setState(() {});
                },
              ),
              const SizedBox(height: 16),
              const CustomResetPassword(),
              const SizedBox(height: 33),
              CustomButton(
                  onPressed: () {
                    if (fromKey.currentState!.validate()) {
                      fromKey.currentState!.save();
                      context.read<SignInCubit>().signInWithEmailAndPassword(
                          email: email, password: passowrd);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  titleButton: "تسجيل الدخول"),
              const SizedBox(height: 33),
              const DontOrHaveAnAccount(
                tilte: 'لاتمتلك حساب',
                navTitle: '؟ إنشاء حساب',
                titleRout: SignUpView.routName,
              ),
              const SizedBox(height: 33),
              const OrDivider(),
              const SizedBox(height: 16),
              SocialButton(
                onPressed: () {
                  context.read<SignInCubit>().signInWithGoogle();
                },
                asset: AppAssets.assetsImagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل',
              ),
              const SizedBox(height: 16),
              /*  SocialButton(
                onPressed: (){
                  buildErrorBar(context, "معذرةّ هذة الخاصية لاتعمل علي جهازك");
                },
                asset: AppAssets.assetsImagesApplIcon,
                title: 'تسجيل بواسطة أبل',
              ),
              const SizedBox(height: 16),*/
              SocialButton(
                onPressed: () {
                  context.read<SignInCubit>().signInWithFacebook();
                },
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
