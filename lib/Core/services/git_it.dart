import 'package:e_commerce_app_frutes/Core/services/firebase_auth_services.dart';
import 'package:e_commerce_app_frutes/Features/auth/data/repo/auth_repo_impl.dart';
import 'package:e_commerce_app_frutes/Features/auth/domain/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<AuthRepo>(
      AuthRepoImpl(firebaseAuthServices: getIt<FirebaseAuthServices>()));
}
