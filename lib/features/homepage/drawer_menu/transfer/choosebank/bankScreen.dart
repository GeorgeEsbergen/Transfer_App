// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'bankhomepage.dart';



class BankScreen extends StatelessWidget {
  const BankScreen({super.key});
  static const String routeName="BankHomePage";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BankHomePage() ,
    );
  }
}