import 'package:flutter/material.dart';
import 'amounthomepage.dart';

class AmountScreen extends StatelessWidget {
  const AmountScreen({super.key});
  static const String routeName = "AmountScreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AmountHomePage(),
    );
  }
}
