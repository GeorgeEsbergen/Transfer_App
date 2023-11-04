import 'package:flutter/material.dart';
import 'package:money_transfer/core/widgets/texts.dart';
import '../../core/widgets/onboardingdetails.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({super.key});
  static const String routeName = "OnBoardingTwo";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OnBoardingImage(
              image: "assets/images/onboarding/onboarding2.png",
            ),
            SizedBox(height: 10),
            LabeledOnboarding(text: "Easy, Fast & Trusted"),
            SizedBox(height: 25),
            SizedBox(
              width: 272,
              child: DescriptionOnBoarding(
                  text:
                      "Fast Money Transfer gauranteed safe transactions with others "),
            ),
            SizedBox(height: 100 + 60),
          ],
        ),
      ),
    );
  }
}
