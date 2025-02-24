import 'package:e_commerce_app_frutes/Features/home/views/widgets/List_item_fuit_grid_view.dart';
import 'package:e_commerce_app_frutes/Features/home/views/widgets/best_selling_header.dart';
import 'package:e_commerce_app_frutes/Features/home/views/widgets/custom_home_app_bar.dart';
import 'package:e_commerce_app_frutes/Features/home/views/widgets/custom_search_decortion.dart';
import 'package:e_commerce_app_frutes/Features/home/views/widgets/featured_item_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomHomeAppBar(),
                SizedBox(
                  height: 20,
                ),
                CustomSearchDecoration(),
                SizedBox(
                  height: 16,
                ),
                FeaturedItemList(),
                SizedBox(
                  height: 24,
                ),
                BestSellingHeader(),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          ListFruitItem(),
        ],
      ),
    );
  }
}
