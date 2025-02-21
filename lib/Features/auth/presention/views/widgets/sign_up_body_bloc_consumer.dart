import 'package:e_commerce_app_frutes/Core/functions/build_error_bar.dart';
import 'package:e_commerce_app_frutes/Core/services/shared_preferences_singleton.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/widgets/signup_body.dart';
import 'package:e_commerce_app_frutes/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../Cubits/sign_up_Cubit/sign_up__cubit.dart';

class SingUpBodyBlocConsumer extends StatelessWidget {
  const SingUpBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpCubitState>(
      listener: (context, state) {
        if (state is SignUpCubitSuccsess) {
          buildErrorBar(context, "Sucsess Create Account");
          Navigator.pop(context);
        }
        if (state is SignUpCubitFaliure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignUpCubitLoading ? true : false,
            child: const SignUpBody());
      },
    );
  }
}
