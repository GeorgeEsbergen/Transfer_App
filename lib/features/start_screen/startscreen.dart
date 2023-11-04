import 'package:flutter/material.dart';

import 'StartScreenHome.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StartScreenHome(),
    );
  }
}