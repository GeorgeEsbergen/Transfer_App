// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:money_transfer/core/widgets/buttons.dart';

import 'package:money_transfer/core/widgets/rowas.dart';
import 'package:money_transfer/core/widgets/textfield.dart';
import 'package:money_transfer/core/widgets/texts.dart';

import '../../../../../core/widgets/currentbalance.dart';
import '../amount/amountscreen.dart';

class TransferHomePage extends StatelessWidget {
  const TransferHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MaianAppBar(text: "Money Transfer"),
          const CurrentBalance(),
          const SizedBox(height: 20),
          const SizedBox(
            width: 307,
            child: DescriptionOnBoarding(
                size: 15,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.start,
                text:
                    "Please, Enter the recier's bank account number in below field "),
          ),
          const SizedBox(height: 40),
          const MainTextField(
              label: "Account No.",
              hint: "1234-5678-9101",
              keyboard: TextInputType.number),
          const SizedBox(height: 90),
          Center(
              child: SmallBlueButton(
                  buttonName: "Next",
                  fn: () {
                    Navigator.of(context).pushNamed(AmountScreen.routeName);
                  }))
        ],
      ),
    );
  }
}
