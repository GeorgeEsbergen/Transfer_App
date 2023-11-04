import 'package:flutter/material.dart';
import 'package:money_transfer/core/util/constant.dart';
import 'package:money_transfer/core/widgets/texts.dart';

import '../../core/widgets/onboardingdetails.dart';

class OnBoardingThree extends StatelessWidget {
  const OnBoardingThree({super.key});
  static const String routeName = "OnBoardingThree";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const OnBoardingImage(
              image: "assets/images/onboarding/onboarding3.png",
            ),
            const SizedBox(height: 10),
            const LabeledOnboarding(text: "Saving Your Money"),
            const SizedBox(height: 25),
            SizedBox(
              width: 272,
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                          text:
                              "Track the progress of your saving and start a habit of transgfering with "),
                      TextSpan(
                          text: "TransferMe",
                          style: TextStyle(color: MainAssets.blue))
                    ]),
              ),
            ),
            const SizedBox(height: 160),
          ],
        ),
      ),
    );
  }
}
