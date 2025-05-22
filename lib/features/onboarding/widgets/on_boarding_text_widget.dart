import 'package:flutter/material.dart';
import 'package:meals_app/core/styles/fonts_style.dart';

class OnBoardingText extends StatelessWidget {
  const OnBoardingText({
    super.key,
    required this.onBoardingTitle,
    required this.onBoardingSubTitle,
  });
  final String onBoardingTitle;
  final String onBoardingSubTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Text(
            onBoardingTitle,
            style: FontsStyle.onBoardingTitleStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            onBoardingSubTitle,
            style: FontsStyle.onBoardingSubTitleStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
