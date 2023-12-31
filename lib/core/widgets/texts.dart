import 'package:flutter/material.dart';

import '../util/constant.dart';

class LabeledOnboarding extends StatelessWidget {
  const LabeledOnboarding({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
    );
  }
}

class DescriptionOnBoarding extends StatelessWidget {
  const DescriptionOnBoarding({
    super.key,
    required this.text,
    this.size,
    this.textAlign,
    this.fontWeight,
  });
  final String text;
  final double? size;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
          color: Colors.grey,
          fontSize: size ?? 13,
          fontWeight: fontWeight ?? FontWeight.w600),
    );
  }
}

class BlueText extends StatelessWidget {
  const BlueText({
    super.key,
    required this.text,
    this.size,
    this.fontWeight,
  });
  final String text;
  final double? size;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: MainAssets.blue,
          fontSize: size ?? 35,
          fontWeight: fontWeight ?? FontWeight.w600),
    );
  }
}
