import 'package:flutter/material.dart';

class AccessibilityWidget extends StatelessWidget {
  const AccessibilityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('주석'),
        centerTitle: true,
      ),
    );
  }
}