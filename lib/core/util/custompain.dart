import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CsutomPaintDraw extends StatelessWidget {
  const CsutomPaintDraw({super.key, this.a});
  final int? a;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 157,
      child: CustomPaint(
        size: Size(
            157,
            (157 * 1.2611464968152866)
                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: RPSCustomPainter(a: a),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  const RPSCustomPainter({
    this.a,
  });
  final int? a;

  @override
  void paint(Canvas canvas, Size size) {
    // blue 255, 33, 150, 243
    // babyblue 255, 71, 243, 33

    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 71, 243, 33)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    paint0.shader = ui.Gradient.linear(
        Offset(size.width * 0.50, size.height * 0.49),
        Offset(size.width * 0.50, size.height),
        [Color(a ?? 0xc11febd0), const Color(0xffffffff)],
        [0.00, 1.00]);

    Path path0 = Path();
    path0.moveTo(size.width, size.height * 0.4856061);
    path0.quadraticBezierTo(size.width * 0.9267516, size.height * 0.8876263,
        size.width * 0.7707006, size.height * 0.7626263);
    path0.cubicTo(
        size.width * 0.7022293,
        size.height * 0.7310606,
        size.width * 0.6318471,
        size.height * 0.5844949,
        size.width * 0.5649682,
        size.height * 0.5958586);
    path0.cubicTo(
        size.width * 0.4869427,
        size.height * 0.6069192,
        size.width * 0.4582803,
        size.height * 0.8861616,
        size.width * 0.2719745,
        size.height * 0.7258081);
    path0.quadraticBezierTo(size.width * 0.0973248, size.height * 0.7050000,
        size.width * 0.0063694, size.height * 0.7272727);
    path0.lineTo(size.width * 0.0063694, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, size.height * 0.7626263);
    path0.lineTo(size.width, size.height * 0.4856061);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
