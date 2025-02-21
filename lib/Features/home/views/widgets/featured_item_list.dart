import 'package:e_commerce_app_frutes/Features/home/views/widgets/feature_item.dart';
import 'package:flutter/material.dart';

class FeaturedItemList extends StatelessWidget {
  const FeaturedItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(4, (index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: FeaturedItem(),
        );
      })),
    );
  }
}
