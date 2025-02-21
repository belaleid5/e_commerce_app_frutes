import 'package:bloc/bloc.dart';
import 'package:e_commerce_app_frutes/Core/services/shared_preferences_singleton.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/repo/auth_repo.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/Cubits/sing_in_cubit/cubit/sign_in_state.dart';
import 'package:e_commerce_app_frutes/constant.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  final AuthRepo authRepo;

  Future<void> signin(String email, String password) async {
    emit(SigninLoading());
    var result = await authRepo.signinWithEmailAndPassword(
      email,
      password,
    );
    SharedPreferencesSingleton.setBool(kIsLoginUser, true);
    result.fold(
      (failure) => emit(SigninFailure(message: failure.messages!)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }

  Future<void> signinWithGoogle() async {
    emit(SigninLoading());
    var result = await authRepo.signinWithGoogle();
    SharedPreferencesSingleton.setBool(kIsLoginUser, true);
    result.fold(
      (failure) => emit(SigninFailure(message: failure.messages!)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }

  Future<void> signinWithFacebook() async {
    emit(SigninLoading());
    var result = await authRepo.signinWithFacebook();
    SharedPreferencesSingleton.setBool(kIsLoginUser, true);
    result.fold(
      (failure) => emit(SigninFailure(message: failure.messages!)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }
}
