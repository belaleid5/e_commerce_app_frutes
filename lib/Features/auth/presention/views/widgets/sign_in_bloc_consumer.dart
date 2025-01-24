import 'package:e_commerce_app_frutes/Core/functions/build_error_bar.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/Cubits/sing_in_cubit/cubit/sign_in_cubit.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/widgets/sing_in_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomSignInBlocConsumer extends StatelessWidget {
  const CustomSignInBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSucsess) {}
        if (state is SignInFaliure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignInLoading ? true : false,
            child: const SignInViewBody());
      },
    );
  }
}
