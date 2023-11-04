import 'package:flutter/cupertino.dart';
import 'package:money_transfer/core/widgets/texts.dart';

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        DescriptionOnBoarding(
          text: "Available Balance",
          textAlign: TextAlign.left,
          fontWeight: FontWeight.w500,
          size: 18,
        ),
        SizedBox(height: 5),
        BlueText(
          text: "\$2,423,765.54",
        ),
      ],
    );
  }
}
