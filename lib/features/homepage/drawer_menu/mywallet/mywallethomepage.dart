// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:money_transfer/core/widgets/rowas.dart';

import '../../../../core/widgets/currentbalance.dart';
import '../../../../core/widgets/mywalletwidgets.dart';

class MyWalletHomePage extends StatelessWidget {
  MyWalletHomePage({super.key});
  List<String>l1 = [
    "Electricity",
    "E-Commerce",
    "Pharmacy",
    "TV & Internet",
    "Transportion",
    "Mobile & Data",
    "tickets",
    "Hotels",
    "Flight",
    "Fuel",
    "Food & Drink",
    "Pay Google Play"
  ];
  List<IconData> icons = [
    Icons.electric_bolt_rounded,
    Icons.shopping_cart_outlined,
    Icons.local_pharmacy_outlined,
    Icons.wifi,
    Icons.car_repair_outlined,
    Icons.phone_android_outlined,
    Icons.note_outlined,
    Icons.hotel_outlined,
    Icons.flight,
    Icons.gas_meter_rounded,
    Icons.fastfood_outlined,
    Icons.games_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MaianAppBar(text: "My Wallet"),
          const CurrentBalance(),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              itemCount: l1.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1 / 1.1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) => MyWalletCard(
                iconData: icons[index],
                text: l1[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
