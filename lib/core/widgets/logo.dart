import 'package:flutter/material.dart';

import '../util/constant.dart';

class ContainerCircle extends StatelessWidget {
  const ContainerCircle({
    super.key,
    required this.size,
    required this.color,
  });
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(50), color: color),
    );
  }
}



class LogoRow extends StatelessWidget {
  const LogoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            child: ContainerCircle(
              size: 47,
              color: MainAssets.blue,
            ),
          ),
          Positioned(
              left: 33,
              child: ContainerCircle(
                size: 47,
                color: MainAssets.babyBlue,
              )),
        ],
      ),
    );
  }
}
