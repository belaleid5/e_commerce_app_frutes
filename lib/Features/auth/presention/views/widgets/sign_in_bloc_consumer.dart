import 'package:e_commerce_app_frutes/Core/functions/build_error_bar.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/Cubits/sing_in_cubit/cubit/sign_in_cubit.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/Cubits/sing_in_cubit/cubit/sign_in_state.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/widgets/sing_in_body.dart';
import 'package:e_commerce_app_frutes/Features/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomSignInBlocConsumer extends StatelessWidget {
  const CustomSignInBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          buildErrorBar(context, "Sucsess Sign In Frutes Hub");
          Navigator.pushNamed(context, HomeView.routName);
        }
        if (state is SigninFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SigninLoading ? true : false,
            child: const SignInViewBody());
      },
    );
  }
}
