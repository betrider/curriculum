import 'package:flutter/material.dart';

/// 1/4 회전의 정수만큼 자식을 회전하는 위젯입니다.
class RotatedBoxExample extends StatelessWidget {
  const RotatedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RotatedBox(
          quarterTurns: 3,
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
