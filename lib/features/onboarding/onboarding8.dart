import 'package:flutter/material.dart';
import '../../core/widgets/onboardingdetails.dart';
import '../../core/widgets/texts.dart';

class OnBoardingEight extends StatelessWidget {
  const OnBoardingEight({super.key});
  static const String routeName = "OnBoardingEight";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OnBoardingImage(
              image: "assets/images/onboarding/onboarding8.png",
            ),
            LabeledOnboarding(
              text: "Color Your Cards",
            ),
            SizedBox(height: 25),
            SizedBox(
              width: 346,
              child: DescriptionOnBoarding(
                text:
                    "Provides better cards management when using Multiple Cards by using different color for each Payment method",
              ),
            ),
            SizedBox(height: 160),
          ],
        ),
      ),
    );
  }
}
