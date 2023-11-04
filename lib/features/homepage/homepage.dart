import 'package:flutter/material.dart';

import 'drawer_menu/Drawer.dart';
import 'homepage_details.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});
  static const String routeName = " HomePage";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawermenu(),
      body:HomePageDetails() ,
    );
  }
}