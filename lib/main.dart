import 'package:flutter/material.dart';
import 'package:sare3_app/core/routes.dart';
import 'package:sare3_app/features/onboarding/views/spalsh_view.dart';

void main() {
  runApp(Sare3App());
}

class Sare3App extends StatelessWidget {
  const Sare3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      onGenerateRoute: RouterGenerator.getRoutes,
    );
  }
}
