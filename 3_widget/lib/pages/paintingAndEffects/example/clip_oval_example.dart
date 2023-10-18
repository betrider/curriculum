import 'package:flutter/material.dart';

/// 타원을 사용하여 하위 항목을 자르는 위젯입니다.
class ClipOvalExample extends StatelessWidget {
  const ClipOvalExample({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl = 'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';

    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipOvalExample'),
        centerTitle: true,
      ),
      body: Center(
        child: ClipOval(
          child: SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
