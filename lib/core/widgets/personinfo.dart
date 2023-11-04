import 'package:flutter/material.dart';
import 'package:money_transfer/core/widgets/texts.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({
    super.key,
    required this.label,
    required this.item,
  });
  final String label;
  final String item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: 331,
      height: 38,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlueText(
            text: label,
            size: 12,
            fontWeight: FontWeight.w500,
          ),
          DescriptionOnBoarding(
            text: item,
            size: 12,
            fontWeight: FontWeight.w400,
          )
        ],
      ),
    );
  }
}
