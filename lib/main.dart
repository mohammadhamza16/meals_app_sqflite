import 'package:flutter/material.dart';
import 'package:meals_app/features/home/views/home_view.dart';
import 'package:meals_app/features/onboarding/views/on_boarding_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/features/service/on_boarding_service.dart';
import 'package:meals_app/router/on_generate_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final seen = await OnboardingService.hasSeenOnboarding();

  runApp(MealsApp(seenOnboarding: seen));
}

class MealsApp extends StatelessWidget {
  const MealsApp({super.key, required this.seenOnboarding});
  final bool seenOnboarding;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(386, 888),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
          onGenerateRoute: generateRoute,
        );
      },
      child: seenOnboarding ? HomeView() : OnBoardingView(),
    );
  }
}
