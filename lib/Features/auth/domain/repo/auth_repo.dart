import 'package:e_commerce_app_frutes/Core/errors/faliure_user.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/entites/user_entity.dart';
import 'package:either_dart/either.dart';

abstract class AuthRepo {
  /* of Either package left in Falure  and Right succssufly*/
  // ignore: non_constant_identifier_names
  Future<Either<Faliure, UserEntity>> CreateUserWithEmailAndPassowrd(
      String email, String password, String name);

// ignore: non_constant_identifier_names
  Future<Either<Faliure, UserEntity>> SignInWithEmaiAndPassowrd(
      String email, String password);

  Future<Either<Faliure, UserEntity>> signInWithGoogle();
  Future<Either<Faliure, UserEntity>> singInWithFacebook();
}
