import 'package:flutter/material.dart';
import 'package:meals_app/core/widgets/meal_image.dart';
import 'package:meals_app/features/meal_description/views/meals_details_view.dart';
import 'package:meals_app/model/meal_model.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  final MealModel meal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return MealDetailsView();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MealImage(meal: meal),
            SizedBox(height: 4),
            Text(
              meal.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                Text(
                  '${meal.rating}',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
