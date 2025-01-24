import 'package:e_commerce_app_frutes/Core/errors/custom_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthServices {
  Future<User?> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        CustomException(message: "كلمة السر ضعيفة");
      } else if (e.code == 'email-already-in-use') {
        CustomException(message: 'هذا الحساب مسجل بالفعل');
      } else if (e.code == 'network-request-failed') {
        CustomException(message: "تأكد من اتصالك بالأنترنت.");
      } else {
        throw CustomException(message: "لقد حدث خطأ ما, حاول مرة اخري");
      }
    } catch (e) {
      throw CustomException(message: "لقد حدث خطأ ما , حاول مرة اخري");
    }
    return null;
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credential.user!; // Return the authenticated user
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw CustomException(message: "كلمة السر  او الأيميل غير صحيح");
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: "كلمة السر  او الأيميل غير صحيح");
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: "تأكد من اتصالك بالأنترنت.");
      } else {
        throw CustomException(message: "لقد حدث خطأ ما, حاول مرة اخري");
      }
    } catch (e) {
      throw CustomException(message: "لقد حدث خطأ ما , حاول مرة اخري");
    }
  }

  Future<User> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }
}
