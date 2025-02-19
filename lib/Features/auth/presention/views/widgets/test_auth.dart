import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  //1
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  //2
  auth.User? _firebaseUser(auth.User? user) {
    //3
    if (user == null) {
      return null;
    }
    //4
    return user;
  }

  //5
  Stream<auth.User?>? get user {
    return _firebaseAuth.authStateChanges().map(_firebaseUser);
  }

  //6
  Future<User?> handleSignInEmail(String email, String password) async {
    //7
    final result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    //8
    return _firebaseUser(result.user);
  }

  //9
  Future<User?> handleSignUp(String email, String password) async {
    //10
    final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    //11
    return _firebaseUser(result.user);
  }

  //12
  Future<void> logout() async {
    return await _firebaseAuth.signOut();
  }
}
