import 'package:flutter/material.dart';

/// 명시적인 스타일 없이 하위 텍스트 위젯에 적용할 텍스트 스타일입니다.
class DefaultTextStyleExample extends StatelessWidget {
  const DefaultTextStyleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Inherit MaterialApp text theme and override font size and font weight.
      body: Center(
        child: DefaultTextStyle.merge(
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          child: const Center(
            child: Text('Flutter'),
          ),
        ),
      ),
    );
  }
}
