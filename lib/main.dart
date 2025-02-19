import 'package:e_commerce_app_frutes/Core/services/bloc_observer.dart/custom_bloc_observer.dart';
import 'package:e_commerce_app_frutes/Core/services/git_it.dart';
import 'package:e_commerce_app_frutes/app_main.dart';
import 'package:e_commerce_app_frutes/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Core/services/shared_preferences_singleton.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesSingleton.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = CustomBlocObserver();
  setupGetIt();
  runApp(const FruitHuB());
}

class FruitHuB extends StatelessWidget {
  const FruitHuB({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppMain();
  }
}
