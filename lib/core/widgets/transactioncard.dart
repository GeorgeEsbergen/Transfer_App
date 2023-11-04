import 'package:flutter/material.dart';
import 'package:money_transfer/core/widgets/texts.dart';
import '../util/custompain.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.icon,
    required this.color,
    this.a,
  });
  final IconData icon;
  final Color color;
  final int? a;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(1),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        height: 198,
        width: 157,
        child: Stack(
          children: [
            CsutomPaintDraw(a: a),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 10, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowOfDetail(color: color, icon: icon),
                  const SizedBox(height: 5),
                  const DescriptionOnBoarding(
                    text: "From",
                    size: 10,
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    "Johnny\n Bairstow",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: DescriptionOnBoarding(
                      text: "20 December 2022",
                      textAlign: TextAlign.end,
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RowOfDetail extends StatelessWidget {
  const RowOfDetail({
    super.key,
    required this.icon,
    required this.color,
  });
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          radius: 20,
          foregroundImage: AssetImage("assets/images/person.JPG"),
        ),
        Column(
          children: [
            Icon(
              icon,
              color: color,
              size: 24,
            ),
            Text(
              "+ \$52.71",
              style: TextStyle(
                  color: color, fontWeight: FontWeight.w700, fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
