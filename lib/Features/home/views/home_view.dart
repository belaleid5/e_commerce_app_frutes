import 'package:e_commerce_app_frutes/Features/home/views/widgets/custom_bottom_nav_bar_.dart';
import 'package:e_commerce_app_frutes/Features/home/views/widgets/home_view-body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routName = "home_view";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
