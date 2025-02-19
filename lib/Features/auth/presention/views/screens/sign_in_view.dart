import 'package:e_commerce_app_frutes/Core/services/git_it.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/repo/auth_repo.dart';
import 'package:e_commerce_app_frutes/features/auth/presention/views/widgets/sign_in_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/functions/buildAppBar.dart';
import '../../Cubits/sing_in_cubit/cubit/sign_in_cubit.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static const routName = " Login";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: "تسجيل الدخول"),
        body: const CustomSignInBlocConsumer(),
      ),
    );
  }
}
