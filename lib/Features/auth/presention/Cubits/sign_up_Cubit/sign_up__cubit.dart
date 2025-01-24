import 'package:bloc/bloc.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/repo/auth_repo.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpCubitState> {
  SignUpCubit(this.authRepo) : super(SignUpCubitIntial());

  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    emit(SignUpCubitLoading());
    var result =
        await authRepo.CreateUserWithEmailAndPassowrd(email, password, name);
    result.fold(
        (faliure) => emit(SignUpCubitFaliure(message: faliure.messages!)),
        (userEntity) =>
            emit(SignUpCubitSuccsess(userEntity: userEntity.toString())));
  }
}
