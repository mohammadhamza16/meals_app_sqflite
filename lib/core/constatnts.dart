import 'package:flutter/material.dart';
import 'package:meals_app/core/styles/fonts_style.dart';

class Constatnts {
  static final List<Padding> onBoardingText = [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Text(
            'Save Your Meals Ingredients',
            style: FontsStyle.onBoardingTitleStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'Save your meals ingredients and get the best recipes for your meals',
            style: FontsStyle.onBoardingSubTitleStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Text(
            'Use Our App The Best Choice',
            style: FontsStyle.onBoardingTitleStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'Use our app to get the best meals and recipes for your meals',
            style: FontsStyle.onBoardingSubTitleStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            ' Our App Your Ultimate Choices',
            style: FontsStyle.onBoardingTitleStyle,
          ),
          const SizedBox(height: 16),
          Text(
            'Our app is your ultimate choice for meals and recipes',
            style: FontsStyle.onBoardingSubTitleStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  ];
}
