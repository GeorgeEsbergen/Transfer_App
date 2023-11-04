import 'package:flutter/material.dart';
import '../../core/widgets/onboardingdetails.dart';
import '../../core/widgets/texts.dart';

class OnBoardingSix extends StatelessWidget {
  const OnBoardingSix({super.key});
  static const String routeName = "OnBoardingSix";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OnBoardingImage(
              image: "assets/images/onboarding/onboarding6.png",
            ),
            SizedBox(height: 10),
            LabeledOnboarding(
              text: "Multiple Credit Cards",
            ),
            SizedBox(height: 25),
            SizedBox(
              width: 337,
              child: DescriptionOnBoarding(
                text:
                    "Provides the 100% freedom of financial management with Multiple Payment Options for locl & International Payments   ",
              ),
            ),
            SizedBox(height: 140),
          ],
        ),
      ),
    );
  }
}
