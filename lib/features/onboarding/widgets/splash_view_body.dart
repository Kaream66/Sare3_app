import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sare3_app/core/routes.dart';

import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> slideAnimation;
  late Animation<double> scaleAnimation;
  Timer? _timer;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 2000));

    slideAnimation = Tween<double>(begin: -300, end: 0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0, 0.5, curve: Curves.easeOut),
      ),
    );

    scaleAnimation = Tween<double>(begin: 1, end: 5).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.5, 1, curve: Curves.easeIn),
      ),
    );
    _startDelay();

    controller.forward();
  }

  void _startDelay() {
    _timer = Timer(Duration(seconds: 2), _goNext);
  }

  void _goNext() {
    Navigator.pushReplacementNamed(context, Routes.homeViewRoute);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6378FF),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, slideAnimation.value),
              child: Transform.scale(scale: scaleAnimation.value, child: child),
            );
          },
          child: Image.asset('assets/images/splash.png', width: 150),
        ),
      ),
    );
  }
}

// class SplashViewBody extends StatefulWidget {
//   const SplashViewBody({super.key});

//   @override
//   State<SplashViewBody> createState() => _SplashViewBodyState();
// }

// class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
//   late AnimationController controller;
//   late Animation<Offset> slideAnimation;
//   late Animation<double> scaleAnimation;
//   Timer? _timer;
//   @override
//   void initState() {
//     super.initState();
//     _startDelay();
//   }

//   void _startDelay() {
//     _timer = Timer(Duration(seconds: 2), _goNext);
//   }

//   void _goNext() {
//     Navigator.pushReplacementNamed(context, Routes.homeViewRoute);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff6378FF),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 28),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,

//           children: [SizedBox(child: Image.asset('assets/images/splash.png'))],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }
// }
