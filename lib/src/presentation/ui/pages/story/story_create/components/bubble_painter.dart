import 'package:flutter/material.dart';

class BubblePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    const borderRadius = 12.0;

    // Draw rounded rectangle
    final rect = Rect.fromLTRB(0, 0, size.width, size.height - borderRadius);
    final rrect =
        RRect.fromRectAndRadius(rect, const Radius.circular(borderRadius));
    canvas.drawRRect(rrect, paint);

    // Draw arrow
    final path = Path()
      ..moveTo(size.width * 0.6, size.height - borderRadius)
      ..lineTo(size.width * 0.7, size.height)
      ..lineTo(size.width * 0.8, size.height - borderRadius)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
