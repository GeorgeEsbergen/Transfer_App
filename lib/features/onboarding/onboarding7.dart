import 'package:flutter/material.dart';
import 'package:money_transfer/core/util/constant.dart';
import 'package:money_transfer/core/widgets/texts.dart';
import '../../core/widgets/onboardingdetails.dart';


class OnBoardingSeven extends StatelessWidget {
  const OnBoardingSeven({super.key});
  static const String routeName = "OnBoardingSeven";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const OnBoardingImage(
              image: "assets/images/onboarding/onboarding7.png",
            ),
            const LabeledOnboarding(text: "Bills Payment\n   Made Easy"),
            const SizedBox(height: 10),
            SizedBox(
              width: 200,
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
                              "Pay monthly or daily bills at home in a site of "),
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
