import 'package:flutter/material.dart';
import 'package:money_transfer/features/homepage/drawer_menu/transfer/transferpag/transferhommepage.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});
  static const String routeName = "TransferHomePage";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TransferHomePage(),
    );
  }
}
