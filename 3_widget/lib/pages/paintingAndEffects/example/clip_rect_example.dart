import 'package:flutter/material.dart';

/// 직사각형을 사용하여 하위 항목을 자르는 위젯입니다.
class ClipRectExample extends StatelessWidget {
  const ClipRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl = 'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';
    return Scaffold(
      appBar: AppBar(title: const Text('ClipRectExample')),
      body: Center(
        child: ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: 0.5,
            child: Image.network(imageUrl),
          ),
        ),
      ),
    );
  }
}
