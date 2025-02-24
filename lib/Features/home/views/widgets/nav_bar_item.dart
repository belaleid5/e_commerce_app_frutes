import 'package:e_commerce_app_frutes/Features/home/presentaion/domain/entites/bottom_nav_bar_entitey.dart';
import 'package:e_commerce_app_frutes/Features/home/views/widgets/active_nav_bar_item.dart';
import 'package:e_commerce_app_frutes/Features/home/views/widgets/inActive_nav_bar_item.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar(
      {super.key, required this.iaSelected, required this.bottomNavBarEntitey});
  final bool iaSelected;
  final BottomNavBarEntitey bottomNavBarEntitey;
  @override
  Widget build(BuildContext context) {
    return iaSelected
        ? Expanded(
            child: ActiveItem(
              name: bottomNavBarEntitey.name,
              image: bottomNavBarEntitey.activeIcon,
            ),
          )
        : InActiveItem(
            image: bottomNavBarEntitey.inActiveIcon,
          );
  }
}
