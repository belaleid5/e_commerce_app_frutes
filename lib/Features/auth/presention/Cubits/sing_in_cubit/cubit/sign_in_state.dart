part of 'sign_in_cubit.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInLoading extends SignInState {}

final class SignInFaliure extends SignInState {
  final String message;

  SignInFaliure({required this.message});
}

// ignore: must_be_immutable
final class SignInSucsess extends SignInState {
  final String userEntity;

  SignInSucsess({required this.userEntity});
}
