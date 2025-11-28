import 'package:flutter/material.dart';
import 'dart:math' as math;

class MapArrowPainter extends CustomPainter {
  final List<Offset> points; // 描画する座標リスト
  final Color color;

  MapArrowPainter({required this.points, this.color = Colors.orange});

  @override
  void paint(Canvas canvas, Size size) {
    if (points.length < 2) return;

    final paint = Paint()
      ..color = color
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();
    path.moveTo(points.first.dx, points.first.dy);

    for (int i = 0; i < points.length - 1; i++) {
      final p1 = points[i];
      final p2 = points[i + 1];

      // 線を引く
      path.lineTo(p2.dx, p2.dy);

      // 各セグメントの中間地点に矢印を描く
      _drawArrowHead(canvas, p1, p2, paint..style = PaintingStyle.fill);
      paint.style = PaintingStyle.stroke; // 戻す
    }

    canvas.drawPath(path, paint);
  }

  void _drawArrowHead(Canvas canvas, Offset p1, Offset p2, Paint paint) {
    const arrowSize = 8.0;
    final dx = p2.dx - p1.dx;
    final dy = p2.dy - p1.dy;
    final angle = math.atan2(dy, dx);

    // セグメントの真ん中あたりに矢印を置く
    final midX = (p1.dx + p2.dx) / 2;
    final midY = (p1.dy + p2.dy) / 2;

    canvas.save();
    canvas.translate(midX, midY);
    canvas.rotate(angle);

    final path = Path();
    path.moveTo(arrowSize, 0); // 先端
    path.lineTo(-arrowSize, -arrowSize / 1.5);
    path.lineTo(-arrowSize, arrowSize / 1.5);
    path.close();

    canvas.drawPath(path, paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
