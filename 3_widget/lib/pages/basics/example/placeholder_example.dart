import 'package:flutter/material.dart';

class PlaceholderExample extends StatelessWidget {
  const PlaceholderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PlaceholderExample')),
      body: const Placeholder(),
    );
  }
}