import 'package:flutter/material.dart';
import 'package:sare3_app/features/home/views/home_view.dart';
import 'package:sare3_app/features/onboarding/views/onboarding_view.dart';

class Routes {
  static const String homeViewRoute = '/homeView';
  static const String onboardingRoute = '/onboardingView';
}

class RouterGenerator {
  static Route<dynamic>? getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeViewRoute:
        return MaterialPageRoute(builder: ((context) => HomeView()));
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: ((context) => OnboardingView()));
      default:
        return null;
    }
  }
}
