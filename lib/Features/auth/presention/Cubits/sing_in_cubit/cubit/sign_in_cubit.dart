import 'package:bloc/bloc.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(SignInLoading());
    var result = await authRepo.SignInWithEmaiAndPassowrd(email, password);
    result.fold((faliure) => emit(SignInFaliure(message: faliure.messages!)),
        (userEntity) => emit(SignInSucsess(userEntity: userEntity.toString())));
  }
}
