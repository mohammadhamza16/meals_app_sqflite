import 'package:flutter/material.dart';
import 'package:meals_app/features/home/views/home_view.dart';
import 'package:meals_app/features/meal_description/views/meal_description_view.dart';
import 'package:meals_app/features/onboarding/views/on_boarding_view.dart';
import 'package:meals_app/router/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.onBoarding:
      return _buildRoute(const OnBoardingView());
    case AppRoutes.home:
      return _buildRoute(const HomeView());
    case AppRoutes.mealDescription:
      return _buildRoute(const MealDescriptionView());
    default:
      return _buildRoute(const HomeView());
  }
}

MaterialPageRoute _buildRoute(Widget page) {
  return MaterialPageRoute(builder: (context) => page);
}
