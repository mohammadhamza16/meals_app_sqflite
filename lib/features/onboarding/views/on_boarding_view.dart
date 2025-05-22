import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/core/constatnts.dart';
import 'package:meals_app/core/styles/app_colors.dart';
import 'package:meals_app/core/styles/fonts_style.dart';
import 'package:meals_app/features/home/views/home_view.dart';
import 'package:meals_app/features/service/on_boarding_service.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentIndex = 0;
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  void _finishOnboarding(BuildContext context) async {
    await OnboardingService.setSeenOnboarding();
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (_) => const HomeView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/onboarding.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 39.h,
            left: 32.w,
            right: 32.w,
            child: Container(
              width: 311.w,
              height: 450.h,
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withValues(alpha: 0.9),
                borderRadius: BorderRadius.circular(48.r),
              ),
              child: Column(
                children: [
                  SizedBox(height: 32),
                  CarouselSlider(
                    items: Constatnts.onBoardingText,
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      initialPage: 0,
                      enlargeCenterPage: false,
                      enableInfiniteScroll: false,
                      autoPlay: false,
                      aspectRatio: 1.4,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  DotsIndicator(
                    dotsCount: Constatnts.onBoardingText.length,
                    position: currentIndex.toDouble(),
                    decorator: DotsDecorator(
                      activeColor: Colors.white,
                      color: Colors.grey,
                      size: Size(24.w, 6.h),
                      activeSize: Size(24.w, 6.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      spacing: EdgeInsets.symmetric(horizontal: 4.w),
                    ),
                    onTap: (position) {
                      setState(() {
                        currentIndex = position.toInt();
                      });
                      _carouselController.animateToPage(position.toInt());
                    },
                  ),
                  SizedBox(height: 28),
                  currentIndex < 2
                      ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              if (currentIndex < 2) {
                                setState(() {
                                  currentIndex++;
                                });
                                _carouselController.animateToPage(currentIndex);
                              }
                            },
                            child: Text(
                              'Next',
                              style: FontsStyle.onBoardingButtonStyle,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                currentIndex = 2;
                              });
                              _carouselController.animateToPage(2);
                            },
                            child: Text(
                              'Skip',
                              style: FontsStyle.onBoardingButtonStyle,
                            ),
                          ),
                        ],
                      )
                      : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(48.r),
                          ),
                        ),
                        onPressed: () => _finishOnboarding(context),
                        child: const Icon(Icons.arrow_forward_outlined),
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
