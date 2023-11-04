import 'package:flutter/material.dart';
import 'package:money_transfer/core/util/constant.dart';

import '../../core/widgets/currentbalance.dart';
import '../../core/widgets/rowas.dart';
import '../../core/widgets/transactioncard.dart';
import '../../core/widgets/visacard.dart';

class HomePageDetails extends StatelessWidget {
  const HomePageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: const Icon(Icons.menu_rounded)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none)),
              ],
            ),
            const CurrentBalance(),
            const SizedBox(height: 35),
            SizedBox(
              height: 85,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const VisaCard(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 5),
                  itemCount: 3),
            ),
            const SizedBox(height: 20),
            SeeAllRow(
              fn: () {},
              label: "Incoming Transactions",
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 198,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const TransactionCard(
                        color: MainAssets.babyBlue,
                        icon: Icons.call_received_outlined,
                      
                      ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemCount: 3),
            ),
            const SizedBox(height: 40),
            SeeAllRow(
              fn: () {},
              label: "Outgoing Transactions",
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 198,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const TransactionCard(
                        color: MainAssets.blue,
                        icon: Icons.arrow_outward,
                        a: 0xff5063BF,
                      ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemCount: 3),
            ),
          ],
        ),
      ),
    );
  }
}

