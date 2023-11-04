import 'package:flutter/material.dart';

import 'carddetailshome.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  static const routeName= "CardDetailsScreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CardDetailsHome(),
    );
  }
}
