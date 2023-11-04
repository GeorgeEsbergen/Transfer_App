import 'package:flutter/material.dart';
import 'package:money_transfer/features/homepage/drawer_menu/transfer/success.dart';
import '../../../../core/widgets/buttons.dart';
import '../../../../core/widgets/currentbalance.dart';
import '../../../../core/widgets/rowas.dart';
import '../../../../core/widgets/textfield.dart';
import '../../../../core/widgets/texts.dart';

class SimCard extends StatelessWidget {
  const SimCard({super.key});
  static const String routeName = "SimCard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MaianAppBar(text: "Top-Up Sim Card"),
            const CurrentBalance(),
            const SizedBox(height: 20),
            const SizedBox(
              width: 307,
              child: DescriptionOnBoarding(
                  size: 15,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.start,
                  text: "Please, Enter the Sim Card Number in below field"),
            ),
            const SizedBox(height: 40),
            const MainTextField(
                label: "Mobile Phone No.",
                hint: "20 012345678",
                keyboard: TextInputType.phone),
            const SizedBox(height: 90),
            Center(
                child: SmallBlueButton(
                    buttonName: "Send",
                    fn: () {
                      Navigator.pushNamed(context, SuccessScreen.routeName);
                    }))
          ],
        ),
      ),
    );
  }
}
