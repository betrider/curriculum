import 'dart:math';

import 'package:flutter/material.dart';

class CustomPaintExample extends StatelessWidget {
  const CustomPaintExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomPaint(
            size: Size(context.size!.width * 0.5, context.size!.height * 0.1),
            painter: Rectangle(),
          ),
          const SizedBox(height: 16),
          CustomPaint(
            painter: Rectangle(isFilled: true),
            child: const Text("Hello World!"),
          ),
          const SizedBox(height: 16),
          CustomPaint(
            size: Size(context.size!.width * 0.5, context.size!.height * 0.1),
            painter: Line(),
          ),
          const SizedBox(height: 16),
          CustomPaint(
            size: Size(context.size!.width * 0.5, context.size!.height * 0.1),
            painter: Circle(),
          ),
          const SizedBox(height: 16),
          CustomPaint(
            size: Size(context.size!.width * 0.5, context.size!.height * 0.1),
            painter: Arc(),
          ),
        ],
      ),
    );
  }
}

class Rectangle extends CustomPainter {
  bool? isFilled;
  Rectangle({this.isFilled});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.blue;
    if (isFilled != null) {
      paint.style = PaintingStyle.fill;
    } else {
      paint.style = PaintingStyle.stroke;
    }
    paint.strokeCap = StrokeCap.round;
    paint.strokeJoin = StrokeJoin.round;
    paint.strokeWidth = 5;
    Offset offset = Offset(size.width * 0.5, size.height);

    Rect rect = Rect.fromCenter(center: offset, width: 50, height: 50);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant Rectangle oldDelegate) {
    return false;
  }
}

class Line extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = const Color.fromARGB(255, 226, 19, 64);
    paint.strokeWidth = 5;
    paint.strokeCap = StrokeCap.round;

    Offset startingOffset = Offset(0, size.height);
    Offset endingOffset = Offset(size.width, size.height);

    canvas.drawLine(startingOffset, endingOffset, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class Circle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.yellow;
    paint.style = PaintingStyle.fill;
    paint.strokeCap = StrokeCap.round;
    paint.strokeJoin = StrokeJoin.round;

    Offset offset = Offset(size.width * 0.5, size.height);
    canvas.drawCircle(offset, 30, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class Arc extends CustomPainter {
  double _degreeToRadians(num degree) {
    return (degree * pi) / 180.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTRB(0, 0, size.width, size.height * 2);
    double startAngle = _degreeToRadians(0);
    double sweepAngle = _degreeToRadians(180);
    const useCenter = false;
    Paint paint = Paint();
    paint.color = Colors.yellow;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 4;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
