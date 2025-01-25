import 'package:e_commerce_app_frutes/Core/errors/custom_exception.dart';
import 'package:e_commerce_app_frutes/Core/errors/faliure_user.dart';
import 'package:e_commerce_app_frutes/Core/services/data_services.dart';
import 'package:e_commerce_app_frutes/Core/services/firebase_auth_services.dart';
import 'package:e_commerce_app_frutes/Core/utils/back_end_pont.dart';
import 'package:e_commerce_app_frutes/Features/auth/data/models/user_model.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/entites/user_entity.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/repo/auth_repo.dart';
// ignore: implementation_imports
import 'package:either_dart/src/either.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  final DataServices dataServices;

  AuthRepoImpl(
      {required this.dataServices, required this.firebaseAuthServices});
  @override
  // ignore: non_constant_identifier_names

  Future<Either<Faliure, UserEntity>> createUserWithEmailAndPassowrd(
      String email, String password, String name) async {
    User? user;
    try {
      user = await firebaseAuthServices.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(name: name, email: email, uid: user!.uid);
      addData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      deletUser(user);
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

  void deletUser(User? user) {
    if (user != null) {
      firebaseAuthServices.deletUser();
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
    User? user;
    try {
      var user = await firebaseAuthServices.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      addData(user: userEntity);
      return Right(userEntity);
    } catch (e) {
      deletUser(user);
      return Left(ServerFaliure(messages: "لقد حدث خطأ ما حاول مرة اخري"));
    }
  }

  @override
  Future<Either<Faliure, UserEntity>> singInWithFacebook() async {
    User? user;
    try {
      var user = await firebaseAuthServices.signInWithFacebook();
      var userEntity = UserModel.fromFirebaseUser(user!);
      addData(user: userEntity);
      return Right(userEntity);
    } catch (e) {
      deletUser(user);
      return Left(ServerFaliure(messages: "لقد حدث خطأ ما حاول مرة اخري"));
    }
  }

  @override
  Future addData({required UserEntity user}) async {
    await dataServices.addData(
        path: BackEndPoint.pathAddUser, data: user.toMap());
  }
}
