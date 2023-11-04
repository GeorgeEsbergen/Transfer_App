import 'package:flutter/material.dart';
import 'package:money_transfer/core/widgets/texts.dart';

import '../util/constant.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20),
      height: 80,
      width: 307,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 1, color: MainAssets.blue)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/icons/mastercard.png",
            width: 32,
            height: 26,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Visa"),
              Row(
                children: [
                  DescriptionOnBoarding(
                    text: "Master Card",
                    size: 12,
                  ),
                  DescriptionOnBoarding(
                    text: "  . 6253",
                    size: 12,
                  ),
                ],
              )
            ],
          ),
          const BlueText(
            text: "\$2,423,765.54",
            size: 14,
          )
        ],
      ),
    );
  }
}

