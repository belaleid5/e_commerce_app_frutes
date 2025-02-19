import 'package:e_commerce_app_frutes/Core/errors/faliure_user.dart';
import 'package:either_dart/either.dart';
import '../entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Faliure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);

  Future<Either<Faliure, UserEntity>> signinWithEmailAndPassword(
      String email, String password);

  Future<Either<Faliure, UserEntity>> signinWithGoogle();
  Future<Either<Faliure, UserEntity>> signinWithFacebook();

  Future addUserData({required UserEntity user});
/*  Future saveUserData({required UserEntity user});*/
  Future<UserEntity> getUserData({required String uid});
}
