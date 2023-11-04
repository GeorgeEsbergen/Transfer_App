// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:money_transfer/core/widgets/buttons.dart';

import 'package:money_transfer/core/widgets/rowas.dart';
import 'package:money_transfer/core/widgets/textfield.dart';
import 'package:money_transfer/core/widgets/texts.dart';

import '../../../../../core/widgets/currentbalance.dart';
import '../choosebank/bankScreen.dart';

class AmountHomePage extends StatelessWidget {
  const AmountHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MaianAppBar(text: "Enter Amount"),
          const CurrentBalance(),
          const SizedBox(height: 20),
          const SizedBox(
            width: 307,
            child: DescriptionOnBoarding(
                size: 15,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.start,
                text:
                    "Please, Enter the Amount of money transfer in below field"),
          ),
          const SizedBox(height: 40),
          const MainTextField(
              label: "Enter Amount",
              hint: "3478234",
              keyboard: TextInputType.number),
          const SizedBox(height: 90),
          Center(
              child: SmallBlueButton(
                  buttonName: "Next",
                  fn: () {
                    Navigator.pushNamed(context, BankScreen.routeName);
                  }))
        ],
      ),
    );
  }
}
