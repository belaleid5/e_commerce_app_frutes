import 'package:e_commerce_app_frutes/Core/errors/custom_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
}
