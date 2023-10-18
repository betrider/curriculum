import 'package:flutter/material.dart';

class ExcludeSemanticsExample extends StatelessWidget {
  const ExcludeSemanticsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExcludeSemanticsExample'),
        centerTitle: true,
      ),
      body: const Placeholder(),
    );
  }
}
