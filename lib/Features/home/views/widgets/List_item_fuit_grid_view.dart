import 'package:e_commerce_app_frutes/Core/widgets/fruit_item.dart';
import 'package:flutter/widgets.dart';

class ListFruitItem extends StatelessWidget {
  const ListFruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 214 / 163,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return const FruitItem();
        });
  }
}
