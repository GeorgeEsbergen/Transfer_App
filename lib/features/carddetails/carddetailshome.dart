import 'package:flutter/material.dart';
import 'package:money_transfer/core/util/constant.dart';
import 'package:money_transfer/core/widgets/buttons.dart';
import 'package:money_transfer/core/widgets/visacard.dart';
import '../../core/widgets/cashback.dart';
import '../../core/widgets/rowas.dart';

class CardDetailsHome extends StatefulWidget {
  const CardDetailsHome({super.key});

  @override
  State<CardDetailsHome> createState() => _CardDetailsHomeState();
}

class _CardDetailsHomeState extends State<CardDetailsHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, right: 20, left: 20),
      child: ListView(
        children: [
          const MaianAppBar(text: 'Card Details'),
          const SizedBox(height: 45),
          SizedBox(
            height: 85,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const VisaCard(),
                separatorBuilder: (context, index) => const SizedBox(width: 7),
                itemCount: 3),
          ),
          const SizedBox(height: 20),
          Container(
            height: 64,
            width: 323,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)),
            child: const RowOfCashBack(),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 153,
            child: BlueButton(
              buttonName: "Add Card",
              fn: () {},
              opacity: 0.9,
            ),
          ),
          const SizedBox(height: 25),
          SeeAllRow(
            fn: () {},
            label: "Cash Backs",
          ),
          const SizedBox(height: 25),
          Expanded(
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, i) => const CashbackItems(
                        money: "\$342",
                        time: "4:30 PM",
                        title: "Entertaiment",
                      ),
                  separatorBuilder: ((context, index) =>
                      const SizedBox(height: 10)),
                  itemCount: 5))
        ],
      ),
    );
  }
}

class CashbackItems extends StatelessWidget {
  const CashbackItems({
    super.key,
    this.color,
    required this.title,
    required this.time,
    required this.money,
    this.iconData,
  });
  final Color? color;
  final String title;
  final String time;
  final String money;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SizedBox(
        height: 79,
        child: Center(
          child: ListTile(
            leading: Container(
              alignment: Alignment.center,
              height: 57,
              width: 57,
              decoration: BoxDecoration(
                  color: color ?? MainAssets.babyBlue.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15)),
              child: const Icon(Icons.shopping_bag_outlined),
            ),
            title: Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              time,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  iconData ?? Icons.call_received_outlined,
                  color: MainAssets.blue,
                  size: 18,
                ),
                Text(
                  money,
                  style: const TextStyle(
                      color: MainAssets.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
