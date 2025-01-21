import 'package:flutter/material.dart';

import '../../../../../Core/functions/buildAppBar.dart';
import '../widgets/loginBody.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routName = " Login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "تسجيل الدخول"),
      body: const LoginBody(),
    );
  }
}
