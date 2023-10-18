import 'package:flutter/material.dart';

class SemanticsExample extends StatelessWidget {
  const SemanticsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SemanticsExample'),
        centerTitle: true,
      ),
      body: const Placeholder(),
    );
  }
}