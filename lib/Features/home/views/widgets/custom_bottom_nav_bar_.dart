import 'package:e_commerce_app_frutes/Features/home/presentaion/domain/entites/bottom_nav_bar_entitey.dart';
import 'package:e_commerce_app_frutes/Features/home/views/widgets/nav_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 25,
              offset: Offset(0, -2),
              spreadRadius: 0,
            )
          ]),
      child: Row(
        children: bottomNavBarItem.asMap().entries.map((e) {
          final index = e.key;
          final entity = e.value;
          return Expanded(
            flex: index == isSelected ? 3 : 2,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = index;
                });
              },
              child: ItemBottomNavBar(
                iaSelected: isSelected == index,
                bottomNavBarEntitey: entity,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
