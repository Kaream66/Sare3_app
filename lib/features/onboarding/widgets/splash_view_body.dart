import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sare3_app/core/routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  void _startDelay() {
    _timer = Timer(Duration(seconds: 2), _goNext);
  }

  void _goNext() {
    Navigator.pushReplacementNamed(context, Routes.homeViewRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6378FF),
      body: Padding(
        padding: const EdgeInsets.only(left: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [SizedBox(child: Image.asset('assets/images/splash.png'))],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
