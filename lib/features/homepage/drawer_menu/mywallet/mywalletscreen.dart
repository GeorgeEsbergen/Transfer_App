import 'package:flutter/material.dart';

import 'mywallethomepage.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});
  static const String routeName="MyWallet";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: MyWalletHomePage() ,
    );
  }
}