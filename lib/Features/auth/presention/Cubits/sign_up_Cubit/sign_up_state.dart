part of 'sign_up__cubit.dart';

@immutable
sealed class SignUpCubitState {}

final class SignUpCubitIntial extends SignUpCubitState {}

final class SignUpCubitLoading extends SignUpCubitState {}

final class SignUpCubitFaliure extends SignUpCubitState {
  final String message;

  SignUpCubitFaliure({required this.message});
}

final class SignUpCubitSuccsess extends SignUpCubitState {
  final String userEntity;

  SignUpCubitSuccsess({required this.userEntity});
}
