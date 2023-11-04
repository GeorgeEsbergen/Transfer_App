import 'package:flutter/material.dart';
import 'package:money_transfer/features/homepage/drawer_menu/profile/profile_homepage.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const String routeName = "ProfileScreen"; 

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileHomePage(),
    );
  }
}
