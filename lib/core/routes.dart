import 'package:flutter/material.dart';
import 'package:sare3_app/features/home/views/home_view.dart';

class Routes {
  static const String homeViewRoute = '/homeView';
}

class RouterGenerator {
  static Route<dynamic>? getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeViewRoute:
        return MaterialPageRoute(builder: ((context) => HomeView()));
      default:
        return null;
    }
  }
}
