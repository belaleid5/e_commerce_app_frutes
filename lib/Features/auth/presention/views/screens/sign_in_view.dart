import 'package:e_commerce_app_frutes/Core/services/git_it.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/repo/auth_repo.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/Cubits/sing_in_cubit/cubit/sign_in_cubit.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/widgets/sign_in_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../Core/functions/buildAppBar.dart';
import '../widgets/sing_in_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static const routName = " Login";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: "تسجيل الدخول"),
        body: const CustomSignInBlocConsumer(),
      ),
    );
  }
}
