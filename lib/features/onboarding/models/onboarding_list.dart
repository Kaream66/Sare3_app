import 'package:flutter/material.dart';
import 'package:sare3_app/features/onboarding/models/onboarding_model.dart';

final List<OnboardingModel> onboardingList = [
  OnboardingModel(
    image: 'assets/images/onboarding_1.png',
    title: Text(
      'كل اللي محتاجه قريب منك',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'IBM Plex Sans Arabic',
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    ),
    subTitle: Text(
      'مطاعم، ماركت، صيدليات ومحلات حواليك، كلها في مكان واحد',
      textAlign: TextAlign.center,

      style: TextStyle(fontFamily: 'IBM Plex Sans Arabic', fontSize: 18),
    ),
  ),
  OnboardingModel(
    image: 'assets/images/onboarding_2.png',
    title: Text(
      textAlign: TextAlign.center,

      'اختار اللي محتاجه، وإحنا نوصلّهولك',
      style: TextStyle(
        fontFamily: 'IBM Plex Sans Arabic',
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    ),
    subTitle: Text(
      textAlign: TextAlign.center,

      'اكتب اللي بتدور عليه، وسريع يوصلك بالأماكن القريبة اللي بتوفره',
      style: TextStyle(fontFamily: 'IBM Plex Sans Arabic', fontSize: 18),
    ),
  ),
  OnboardingModel(
    image: 'assets/images/onboarding_3.png',
    title: Text(
      textAlign: TextAlign.center,

      'طلبك كله من مكان واحد',
      style: TextStyle(
        fontFamily: 'IBM Plex Sans Arabic',
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    ),
    subTitle: Text(
      textAlign: TextAlign.center,

      'اختار احتياجاتك من المحلات، وسيب التوصيل علينا',
      style: TextStyle(fontFamily: 'IBM Plex Sans Arabic', fontSize: 18),
    ),
  ),
];
