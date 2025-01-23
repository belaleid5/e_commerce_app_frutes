import 'package:e_commerce_app_frutes/Core/functions/buildAppBar.dart';
import 'package:e_commerce_app_frutes/Core/functions/build_error_bar.dart';
import 'package:e_commerce_app_frutes/Core/widgets/customButton.dart';
import 'package:e_commerce_app_frutes/Core/widgets/customTextFormFiled.dart';
import 'package:e_commerce_app_frutes/Core/widgets/custom_text_form_password.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/Cubits/cubit/sign_up__cubit.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/screens/login_view.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/widgets/dont_have_an_account.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/widgets/terms_and_condition.dart';
import 'package:e_commerce_app_frutes/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  late String email, passowrd, userName;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late bool isAcceptedTerms = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                  keyboardType: TextInputType.name,
                  hintTitle: " الأسم الكامل ",
                  onSaved: (value) {
                    userName = value!;
                  },
                ),
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
                  },
                ),
                const SizedBox(height: 16),
                TermsAndCondition(
                  onChange: (bool value) {
                    isAcceptedTerms = value;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        if (isAcceptedTerms) {
                          context
                              .read<SignUpCubit>()
                              .createUserWithEmailAndPassword(
                                  email: email,
                                  password: passowrd,
                                  name: userName);
                        } else {
                          buildErrorBar(context,
                              'يرجي التأكد من الموافقة علي الشروطة الخاص');
                        }
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    },
                    titleButton: " إنشاء الحساب"),
                const SizedBox(
                  height: 24,
                ),
                const DontOrHaveAnAccount(
                  tilte: " تمتلك حساب بالفعل؟",
                  navTitle: " تسجيل الدخول",
                  titleRout: LoginView.routName,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
