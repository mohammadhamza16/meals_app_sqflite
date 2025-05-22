import 'package:flutter/material.dart';
import 'package:meals_app/features/home/views/home_view.dart';

import 'package:meals_app/features/meal_description/views/meals_details_view.dart';
import 'package:meals_app/features/onboarding/views/on_boarding_view.dart';
import 'package:meals_app/router/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.onBoarding:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case AppRoutes.home:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case AppRoutes.mealDescription:
      return MaterialPageRoute(
        builder: (context) => MealDetailsView(),
        settings: settings,
      );
    default:
      return MaterialPageRoute(builder: (context) => (const HomeView()));
  }
}
