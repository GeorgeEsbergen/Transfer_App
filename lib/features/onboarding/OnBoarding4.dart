// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:money_transfer/core/widgets/texts.dart';
import '../../core/widgets/onboardingdetails.dart';

class OnBoardingFour extends StatelessWidget {
  const OnBoardingFour({super.key});
  static const String routeName = "OnBoardingFour";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OnBoardingImage(
              image: "assets/images/onboarding/onboarding4.png",
            ),
            SizedBox(height: 10),
            LabeledOnboarding(text: "Free Transactions"),
            SizedBox(height: 25),
            SizedBox(
                width: 279,
                child: DescriptionOnBoarding(
                    text:
                        "Provides the quality of financial with free money transactions without any fees ")),
            SizedBox(height: 160),
          ],
        ),
      ),
    );
  }
}
