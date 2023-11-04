import 'package:flutter/material.dart';

import '../util/constant.dart';

class MyWalletCard extends StatelessWidget {
  const MyWalletCard({
    super.key, required this.text, required this.iconData,
  });
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 112,
      width: 109,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            Icon(
              iconData,
              color: MainAssets.babyBlue,
            ),
            const SizedBox(height: 15),
            Center(
              child: Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
