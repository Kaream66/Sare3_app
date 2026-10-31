import 'package:flutter/material.dart';
import 'package:sare3_app/features/onboarding/models/onboarding_model.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late final OnboardingModel onboardingModel;
  final List<OnboardingModel> list = [
    OnboardingModel(
      image: 'assets/images/onboarding_1.png',
      title: Text(
        'كل اللي محتاجه قريب منك',
        style: TextStyle(
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      subTitle: Text(
        'مطاعم، ماركت، صيدليات ومحلات حواليك، كلها في مكان واحد.',
        style: TextStyle(fontFamily: 'IBM Plex Sans Arabic', fontSize: 22),
      ),
    ),
    OnboardingModel(
      image: 'assets/images/onboarding_2.png',
      title: Text(
        'اختار اللي محتاجه، وإحنا نوصلّهولك',
        style: TextStyle(
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      subTitle: Text(
        'اكتب اللي بتدور عليه، وسريع يوصلك بالأماكن القريبة اللي بتوفره.',
        style: TextStyle(fontFamily: 'IBM Plex Sans Arabic', fontSize: 22),
      ),
    ),
    OnboardingModel(
      image: 'assets/images/onboarding_3.png',
      title: Text(
        'طلبك كله من مكان واحد',
        style: TextStyle(
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      subTitle: Text(
        'اختار احتياجاتك من المحلات، وسيب التوصيل علينا.',
        style: TextStyle(fontFamily: 'IBM Plex Sans Arabic', fontSize: 22),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white);
  }
}
