import 'package:flutter/material.dart';

/// 주어진 패딩으로 자식을 삽입하는 위젯입니다.
class PaddingExample extends StatelessWidget {
  const PaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Hello World!'),
          ),
        ),
      ),
    );
  }
}
