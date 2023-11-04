import 'package:flutter/material.dart';
import 'package:money_transfer/core/widgets/texts.dart';
import '../../core/util/constant.dart';
import '../../core/widgets/buttons.dart';
import '../../core/widgets/logo.dart';
import '../start_screen/dots.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height / 4.5),
            SizedBox(
              height: 85,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    right: size.width / 2 - 15,
                    child: const ContainerCircle(
                      size: 83,
                      color: MainAssets.blue,
                    ),
                  ),
                  Positioned(
                      left: size.width / 2 - 15,
                      child: const ContainerCircle(
                        size: 83,
                        color: MainAssets.babyBlue,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 27),
            const Text(
              "Welcome To",
              style: TextStyle(fontSize: 46, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            const Text(
              "TransferMe",
              style: TextStyle(
                  color: MainAssets.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 15),
            const DescriptionOnBoarding(text: "Your Best Money Transfer Partner"),
            const SizedBox(height: 115),
            BlueButton(
              buttonName: "Get Started",
              fn: () {
                Navigator.pushNamed(context, PageViewDemo.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
