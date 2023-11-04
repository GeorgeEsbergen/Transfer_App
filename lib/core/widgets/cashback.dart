import 'package:flutter/material.dart';

import '../util/constant.dart';

class CashBackCard extends StatelessWidget {
  const CashBackCard({
    super.key,
    required this.coin,
    required this.money,
    required this.color,
    required this.iconData,
  });

  final String coin;
  final String money;
  final Color color;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 15),
      height: 46,
      width: 96,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                coin,
                style: const TextStyle(color: Colors.white),
              ),
              Icon(
                iconData,
                color: Colors.white,
                size: 18,
              ),
            ],
          ),
          Text(
            money,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class RowOfCashBack extends StatelessWidget {
  const RowOfCashBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CashBackCard(
          iconData: Icons.arrow_outward_outlined,
          coin: 'Euro',
          color: MainAssets.blue,
          money: '54.2',
        ),
        CashBackCard(
          iconData: Icons.call_received_outlined,
          coin: 'USD',
          color: MainAssets.babyBlue,
          money: '98.2',
        ),
        CashBackCard(
          iconData: Icons.call_received_outlined,
          coin: 'EGP',
          color: MainAssets.babyBlue,
          money: '175',
        ),
      ],
    );
  }
}
