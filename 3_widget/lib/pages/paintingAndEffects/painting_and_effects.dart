import 'package:flutter/material.dart';

class PaintingAndEffectsWidget extends StatelessWidget {
  const PaintingAndEffectsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('페인팅'),
        centerTitle: true,
      ),
    );
  }
}