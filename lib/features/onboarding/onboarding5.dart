import 'package:flutter/material.dart';
import '../../core/widgets/onboardingdetails.dart';
import '../../core/widgets/texts.dart';


class OnBoardingFive extends StatelessWidget {
  const OnBoardingFive({super.key});
  static const String routeName = "OnBoardingFive";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OnBoardingImage(
              image: "assets/images/onboarding/onboarding5.png",
            ),
            LabeledOnboarding(
              text: "International\nTransactions",
            ),
            SizedBox(height: 5),
            SizedBox(
              width: 332,
              child: DescriptionOnBoarding(
                text:
                    "Provides the 100% freedom of financial management with lowest fees on internatinal transactions ",
              ),
            ),
            SizedBox(height: 160),
          ],
        ),
      ),
    );
  }
}
