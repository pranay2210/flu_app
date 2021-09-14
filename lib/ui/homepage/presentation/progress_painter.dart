import 'dart:math';

import 'package:flutter/material.dart';

class ProgressPainter extends CustomPainter {
  Color defaultCiricleColor;
  Color percentageCompleteCircleColor;
  double completedPercentage;
  double circleWidth;

  ProgressPainter(
      {this.defaultCiricleColor,
      this.percentageCompleteCircleColor,
      this.completedPercentage,
      this.circleWidth});

  getPaint(Color color) {
    return Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = circleWidth;
  }

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint defaultCirclePaint = getPaint(defaultCiricleColor);
    Paint progressCirclePaint = getPaint(percentageCompleteCircleColor);

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, defaultCirclePaint);

    double arcAngle = 2 * pi * (completedPercentage / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        arcAngle, false, progressCirclePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
}
