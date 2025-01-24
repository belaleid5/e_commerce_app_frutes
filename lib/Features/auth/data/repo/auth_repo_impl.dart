import 'package:e_commerce_app_frutes/Core/errors/custom_exception.dart';
import 'package:e_commerce_app_frutes/Core/errors/faliure_user.dart';
import 'package:e_commerce_app_frutes/Core/services/firebase_auth_services.dart';
import 'package:e_commerce_app_frutes/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/entites/user_entity.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/repo/auth_repo.dart';
// ignore: implementation_imports
import 'package:either_dart/src/either.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;

  AuthRepoImpl({required this.firebaseAuthServices});
  @override
  // ignore: non_constant_identifier_names
  Future<Either<Faliure, UserEntity>> CreateUserWithEmailAndPassowrd(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthServices.createUserWithEmailAndPassword(
          email: email, password: password);
      return Right(
        UserModel.fromFirebaseUser(user!),
      );
    } on CustomException catch (e) {
      return Left(ServerFaliure(
        messages: e.message,
      ));
    } catch (e) {
      return Left(
        ServerFaliure(
          messages: 'حدث خطأ يرجي المحاولة مرة اخري',
        ),
      );
    }
  }

  @override
  // ignore: non_constant_identifier_names
  Future<Either<Faliure, UserEntity>> SignInWithEmaiAndPassowrd(
      String email, String password) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return Left(ServerFaliure(
        messages: e.message,
      ));
    } catch (e) {
      return Left(
        ServerFaliure(
          messages: 'حدث خطأ يرجي المحاولة مرة اخري',
        ),
      );
    }
  }

  @override
  Future<Either<Faliure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthServices.signInWithGoogle();
      return Right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      return Left(ServerFaliure(messages: "لقد حدث خطأ ما حاول مرة اخري"));
    }
  }

  @override
  Future<Either<Faliure, UserEntity>> singInWithFacebook() async {
    try {
      var user = await firebaseAuthServices.signInWithFacebook();
      return Right(UserModel.fromFirebaseUser(user!));
    } catch (e) {
      return Left(ServerFaliure(messages: "لقد حدث خطأ ما حاول مرة اخري"));
    }
  }
}
