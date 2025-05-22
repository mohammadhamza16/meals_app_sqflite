import 'package:shared_preferences/shared_preferences.dart';

class OnboardingService {
  static const _keySeenOnboarding = 'seenOnboarding';

  static Future<void> setSeenOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keySeenOnboarding, true);
  }

  static Future<bool> hasSeenOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keySeenOnboarding) ?? false;
  }
}
