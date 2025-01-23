import 'package:e_commerce_app_frutes/Core/services/git_it.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/repo/auth_repo.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/Cubits/cubit/sign_up__cubit.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/widgets/sign_up_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/functions/buildAppBar.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const routName = " SignUp";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(context, title: "حساب جديد"),
        body: const SingUpBodyBlocConsumer(),
      ),
    );
  }
}
