// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:money_transfer/core/widgets/rowas.dart';
import 'package:money_transfer/core/widgets/texts.dart';
import '../../../../../core/widgets/currentbalance.dart';
import '../simcard.dart';

class BankHomePage extends StatelessWidget {
  BankHomePage({super.key});
  List<String> l1 = [
    "BM Online",
    "HCB",
    "Al Ahly",
    "CIB",
    "Cairo",
    "HSBC",
    "MCB",
    "Senori",
    "Stripe",
    "PayPal",
    "BOP",
    "HBL"
  ];
  List<Color> color = [
    Colors.green,
    Colors.black,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.black,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.blue,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MaianAppBar(text: "Select a Bank"),
          const CurrentBalance(),
          const SizedBox(height: 10),
          const DescriptionOnBoarding(
            text:
                "Please, Select a bank from which you want to do the money transfer ",
            size: 15,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 30),
          Expanded(
            child: GridView.builder(
              itemCount: l1.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1 / 1.1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) => BankCard(
                color: color[index],
                text: l1[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BankCard extends StatelessWidget {
  const BankCard({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SimCard.routeName);
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 15),
        alignment: Alignment.bottomCenter,
        height: 112,
        width: 109,
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(text),
      ),
    );
  }
}
