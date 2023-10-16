import 'package:flutter/material.dart';

class StatelessWidgetExample extends StatelessWidget {
  const StatelessWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatelessWidgetExample')),
      body: const Placeholder()
    );
  }
}