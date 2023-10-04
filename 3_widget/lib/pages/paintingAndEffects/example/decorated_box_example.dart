import 'package:flutter/material.dart';

/// 자식이 칠하기 전이나 후에 장식을 칠하는 위젯입니다.
class DecoratedBoxExample extends StatelessWidget {
  const DecoratedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DecoratedBoxExample')),
      body: const Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(-0.5, -0.6),
              radius: 0.15,
              colors: <Color>[
                Color(0xFFEEEEEE),
                Color(0xFF111133),
              ],
              stops: <double>[0.9, 1.0],
            ),
          ),
        ),
      ),
    );
  }
}
