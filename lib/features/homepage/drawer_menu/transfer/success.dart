import 'package:flutter/material.dart';
import 'package:money_transfer/core/util/constant.dart';
import 'package:money_transfer/core/widgets/buttons.dart';

import '../../../../core/widgets/texts.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});
  static const String routeName = "Success Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 104,
                backgroundColor: MainAssets.babyBlue,
                child: Image.asset(
                  "assets/images/icons/true.png",
                  height: 100,
                  width: 100,
                ),
              ),
              const BlueText(
                text: 'Congrats!',
                size: 55,
                fontWeight: FontWeight.bold,
              ),
              const BlueText(
                text: 'Money Transfer Successfuly',
                size: 16,
                fontWeight: FontWeight.w600,
              ),
              SmallBlueButton(
                  buttonName: "Great!",
                  fn: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/", (route) => false);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
