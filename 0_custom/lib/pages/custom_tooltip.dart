import 'package:flutter/material.dart';

class CustomTooltipPage extends StatelessWidget {
  static const routeName = 'custom-tooltip';
  const CustomTooltipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomTooltipPage'),
      ),
      body: Center(
        child: Container(
          decoration: const ShapeDecoration(
            color: Colors.blue,
            shape: ToolTipCustomShape(),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: const Text(
            '툴팁입니다.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class ToolTipCustomShape extends ShapeBorder {
  final bool usePadding;

  const ToolTipCustomShape({this.usePadding = true});

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.only(bottom: usePadding ? 20 : 0);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    rect = Rect.fromPoints(rect.topLeft, rect.bottomRight - const Offset(0, 20));
    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, const Radius.circular(50)))
      ..moveTo(rect.bottomCenter.dx - 10, rect.bottomCenter.dy)
      ..relativeLineTo(10, 20)
      ..relativeLineTo(10, -20)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}
