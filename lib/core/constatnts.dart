import 'package:meals_app/features/onboarding/widgets/on_boarding_text_widget.dart';
import 'package:meals_app/model/meal_model.dart';

class Constants {
  static final List<OnBoardingText> onBoardingText = [
    OnBoardingText(
      onBoardingTitle: 'Save Your Meals Ingredients',
      onBoardingSubTitle:
          'Save your meals ingredients and get the best recipes for your meals',
    ),
    OnBoardingText(
      onBoardingTitle: 'Use Our App The Best Choice',
      onBoardingSubTitle:
          'Use our app to get the best meals and recipes for your meals',
    ),
    OnBoardingText(
      onBoardingTitle: 'Our AppYour Ultimate Choice',
      onBoardingSubTitle:
          'All the best restaurants and their top menus are ready for you',
    ),
  ];
  static List<MealModel> mealsList = [];
}
