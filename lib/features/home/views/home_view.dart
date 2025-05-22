import 'package:flutter/material.dart';
import 'package:meals_app/core/constatnts.dart';
import 'package:meals_app/core/widgets/app_banner.dart';
import 'package:meals_app/core/widgets/meal_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: AppBanner()),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 16,
              ),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  childAspectRatio: .9,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) =>
                      MealItem(meal: Constants.mealsList[index]),
                  childCount: Constants.mealsList.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
