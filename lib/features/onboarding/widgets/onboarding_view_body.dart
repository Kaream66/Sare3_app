import 'package:flutter/material.dart';
import 'package:sare3_app/core/utils/app_colors.dart';
import 'package:sare3_app/core/helpers/routes.dart';
import 'package:sare3_app/core/widgets/custom_button.dart';
import 'package:sare3_app/features/onboarding/models/onboarding_list.dart';
import 'package:sare3_app/features/onboarding/models/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final PageController pageController = PageController();
  int currentPage = 0;
  late final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: onboardingList.length,
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final item = onboardingList[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(item.image, height: 250),

                        const SizedBox(height: 30),

                        item.title,

                        const SizedBox(height: 15),
                        item.subTitle,
                        SizedBox(height: 180),
                      ],
                    );
                  },
                ),
              ),
              SmoothPageIndicator(
                controller: pageController,
                count: onboardingList.length,
                effect: const ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  expansionFactor: 4,
                  activeDotColor: Color(0xff6378ff),
                  dotColor: Colors.grey,
                  spacing: 8,
                ),
              ),
              SizedBox(height: 50),
              if (currentPage == onboardingList.length - 1)
                CustomButton(
                  text: 'إبدء',
                  ontap: () {
                    Navigator.pushReplacementNamed(context, Routes.homeViewRoute);
                  },
                  color: AppColors.primaryColor,
                )
              else
                Column(
                  children: [
                    SizedBox(height: 35),
                    CustomButton(
                      text: 'التالى',
                      ontap: () {
                        pageController.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      },
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                      text: 'تخطى',
                      ontap: () {
                        Navigator.pushReplacementNamed(context, Routes.homeViewRoute);
                      },
                      color: Color(0xffEFF2FF),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
